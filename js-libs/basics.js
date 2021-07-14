// (a -> b) -> (b -> c) -> a -> c
function compose (f, g) {
  return function $compose (x) {
    return f(g(x))
  }
}

function pipe (f, g) {
  return function $pipe (x) {
    return g(f(x));
  }
}

// (a -> Bool) -> List a -> List a
function filter (fn) {
  return function $filter (list) {
    const result = [];
    for (let i of list) {
      if (fn(i)) {
        result.push(i)
      }
    }
    return result;
  }
}


// String -> List String -> String
function join (connector) {
  return function (list) {
    return list.join(connector)
  }
}

// (a -> b) -> List a -> List b
function map (fn, functor) {
  var idx = 0
  var len = functor.length
  var result = Array(len)
  while (idx < len) {
    result[idx] = fn(functor[idx])
    idx += 1
  }
  return result
}

function prop (idx) {
  return function (obj) {
    return obj[idx]
  }
}

// (a -> b -> b) -> b -> List a -> b
function reduce (fn, result, list) {
  var idx = 0
  var len = list.length
  while (idx < len) {
    result = fn(list[idx], result)
    idx += 1
  }
  return result
}

// List a -> List a
const sort = sortWith((a, b) => {
  if (a > b) return 1
  else if (a < b) return -1
  else return 0
})

// (a -> a -> Int) -> List a -> List a
function sortWith (comparator) {
  return function (list) {
    return Array.prototype.slice.call(list, 0).sort(comparator)
  }
}

function logger (style) {
  return function styledLogger (string) {
    console.log(`${style}%s\x1b[0m`, string)
  }
}

module.exports = {
  compose,
  pipe,
  filter,
  join,
  map,
  prop,
  reduce,
  sort,
  sortWith,
  logger
}