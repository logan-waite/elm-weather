const path = require('path');
const fs = require('fs');
const {
  filter,
  join,
  pipe,
  reduce,
  sort,
  logger
} = require('./js-libs/basics')

const logGreen = logger("\x1b[32m")
const logDim = logger("\x1b[2m");

const directoryPath = path.join(__dirname, 'icons');

fs.readdir(directoryPath, function (err, fileList) {
  if (err) {
    return console.error('Unable to scan directory: ' + err);
  }
  const moduleName = "Icons"
  const files = pipe(
    filter((f) => f.slice(-4) === ".svg"),
    sort
  )(fileList)

  const blockData = reduce(convertFileToFunction, { icons: [], attributes: [], blocks: [] }, sort(files))
  const iconString = join(', ')(blockData.icons)
  const attributeString = join(', ')([...new Set(blockData.attributes)])
  const blocks = join("\n\n")(blockData.blocks)

  const fileHeader = createFileHeader(moduleName, iconString, attributeString);
  const fileContents = fileHeader + "\n\n" + blocks;

  const targetDir = path.join(__dirname, 'src', 'UI', `${moduleName}.elm`)
  fs.writeFile(targetDir, fileContents, { flag: 'w' }, (err) => {
    if (err) {
      console.error(err)
    } else {
      const pluralizedIcons = files.length === 1 ? 'icon' : 'icons'
      logGreen(`Successfully generated ${files.length} ${pluralizedIcons} into ${targetDir}`)
    }
  })
})

function convertFileToFunction (file, fileData) {
  const svgData = parse(file);
  fileData.icons.push(svgData.name)
  fileData.attributes = sort([...fileData.attributes, svgData.attribute])
  fileData.blocks.push(createCodeBlock(svgData))
  return fileData
}

function parse (file) {
  const fileContents = fs.readFileSync(`${directoryPath}/${file}`, { encoding: 'utf-8' })
  const viewbox = fileContents.match(/viewbox="(\d+ \d+ \d+ \d+)"/i)[1];
  const [_, attribute, data] = fileContents.match(/path\s([a-zA-Z]+)="(.+)"/i)
  // TODO: perhaps convert dashed names to camel case
  const name = file.slice(0, -4)
  return { viewbox, attribute, data, name }
}

function createCodeBlock (svg) {
  const typeAnnotation = `${svg.name} : Int -> Color -> Element msg`;
  const declaration = `${svg.name} =`
  const body = `    icon "${svg.viewbox}" [ Svg.path [ ${svg.attribute} "${svg.data}" ] [] ]`

  return `${typeAnnotation}\n${declaration}\n${body}\n`
}

function createFileHeader (moduleName, icons, attributes) {
  return `{-
   This file is a generated file. 
   Any changes made will be lost 
   on regeneration
-}


module UI.${moduleName} exposing (${icons})

import Element exposing (Color, Element)
import Libraries.Icons exposing (icon)
import Svg
import Svg.Attributes exposing (${attributes})
`
}