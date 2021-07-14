{-
   This file is a generated file. 
   Any changes made will be lost 
   on regeneration
-}


module UI.Icons exposing (cloud, cog, cogs, searchLocation, sun)

import Element exposing (Color, Element)
import Libraries.Icons exposing (icon)
import Svg
import Svg.Attributes exposing (d)


cloud : Int -> Color -> Element msg
cloud =
    icon "0 0 640 512" [ Svg.path [ d "M571.7 238.8c2.8-9.9 4.3-20.2 4.3-30.8 0-61.9-50.1-112-112-112-16.7 0-32.9 3.6-48 10.8-31.6-45-84.3-74.8-144-74.8-94.4 0-171.7 74.5-175.8 168.2C39.2 220.2 0 274.3 0 336c0 79.6 64.4 144 144 144h368c70.7 0 128-57.2 128-128 0-47-25.8-90.8-68.3-113.2zM512 448H144c-61.9 0-112-50.1-112-112 0-56.8 42.2-103.7 97-111-.7-5.6-1-11.3-1-17 0-79.5 64.5-144 144-144 60.3 0 111.9 37 133.4 89.6C420 137.9 440.8 128 464 128c44.2 0 80 35.8 80 80 0 18.5-6.3 35.6-16.9 49.2C573 264.4 608 304.1 608 352c0 53-43 96-96 96z" ] [] ]


cog : Int -> Color -> Element msg
cog =
    icon "0 0 512 512" [ Svg.path [ d "M482.696 299.276l-32.61-18.827a195.168 195.168 0 0 0 0-48.899l32.61-18.827c9.576-5.528 14.195-16.902 11.046-27.501-11.214-37.749-31.175-71.728-57.535-99.595-7.634-8.07-19.817-9.836-29.437-4.282l-32.562 18.798a194.125 194.125 0 0 0-42.339-24.48V38.049c0-11.13-7.652-20.804-18.484-23.367-37.644-8.909-77.118-8.91-114.77 0-10.831 2.563-18.484 12.236-18.484 23.367v37.614a194.101 194.101 0 0 0-42.339 24.48L105.23 81.345c-9.621-5.554-21.804-3.788-29.437 4.282-26.36 27.867-46.321 61.847-57.535 99.595-3.149 10.599 1.47 21.972 11.046 27.501l32.61 18.827a195.168 195.168 0 0 0 0 48.899l-32.61 18.827c-9.576 5.528-14.195 16.902-11.046 27.501 11.214 37.748 31.175 71.728 57.535 99.595 7.634 8.07 19.817 9.836 29.437 4.283l32.562-18.798a194.08 194.08 0 0 0 42.339 24.479v37.614c0 11.13 7.652 20.804 18.484 23.367 37.645 8.909 77.118 8.91 114.77 0 10.831-2.563 18.484-12.236 18.484-23.367v-37.614a194.138 194.138 0 0 0 42.339-24.479l32.562 18.798c9.62 5.554 21.803 3.788 29.437-4.283 26.36-27.867 46.321-61.847 57.535-99.595 3.149-10.599-1.47-21.972-11.046-27.501zm-65.479 100.461l-46.309-26.74c-26.988 23.071-36.559 28.876-71.039 41.059v53.479a217.145 217.145 0 0 1-87.738 0v-53.479c-33.621-11.879-43.355-17.395-71.039-41.059l-46.309 26.74c-19.71-22.09-34.689-47.989-43.929-75.958l46.329-26.74c-6.535-35.417-6.538-46.644 0-82.079l-46.329-26.74c9.24-27.969 24.22-53.869 43.929-75.969l46.309 26.76c27.377-23.434 37.063-29.065 71.039-41.069V44.464a216.79 216.79 0 0 1 87.738 0v53.479c33.978 12.005 43.665 17.637 71.039 41.069l46.309-26.76c19.709 22.099 34.689 47.999 43.929 75.969l-46.329 26.74c6.536 35.426 6.538 46.644 0 82.079l46.329 26.74c-9.24 27.968-24.219 53.868-43.929 75.957zM256 160c-52.935 0-96 43.065-96 96s43.065 96 96 96 96-43.065 96-96-43.065-96-96-96zm0 160c-35.29 0-64-28.71-64-64s28.71-64 64-64 64 28.71 64 64-28.71 64-64 64z" ] [] ]


cogs : Int -> Color -> Element msg
cogs =
    icon "0 0 640 512" [ Svg.path [ d "M538.6 196.4l-2.5-3.9c-4.1.3-8.1.3-12.2 0l-2.5 4c-5.8 9.2-17.1 13.4-27.5 10.1-13.8-4.3-23-8.8-34.3-18.1-9-7.4-11.2-20.3-5.4-30.4l2.5-4.3c-2.3-3.4-4.3-6.9-6.1-10.6h-9.1c-11.6 0-21.4-8.2-23.6-19.6-2.6-13.7-2.7-24.2.1-38.5 2.1-11.3 12.1-19.5 23.6-19.5h9c1.8-3.7 3.8-7.2 6.1-10.6l-2.6-4.5c-5.8-10-3.6-22.7 5.2-30.3 10.6-9.1 19.7-14.3 33.5-19 10.8-3.7 22.7.7 28.5 10.6l2.6 4.4c4.1-.3 8.1-.3 12.2 0l2.6-4.4c5.8-9.9 17.7-14.3 28.6-10.5 13.3 4.5 22.3 9.6 33.5 19.1 8.8 7.5 10.9 20.2 5.1 30.2l-2.6 4.4c2.3 3.4 4.3 6.9 6.1 10.6h5.1c11.6 0 21.4 8.2 23.6 19.6 2.6 13.7 2.7 24.2-.1 38.5-2.1 11.3-12.1 19.5-23.6 19.5h-5c-1.8 3.7-3.8 7.2-6.1 10.6l2.5 4.3c5.9 10.2 3.5 23.1-5.5 30.5-10.7 8.8-19.9 13.4-34 17.9-10.5 3.3-21.9-.8-27.7-10.1zm12.2-34.5l10.6 18.3c6.7-2.8 12.9-6.4 18.7-10.8l-10.6-18.3 6.4-7.5c4.8-5.7 8.6-12.1 11-19.1l3.3-9.3h21.1c.9-7.1.9-14.4 0-21.5h-21.1l-3.3-9.3c-2.5-7-6.2-13.4-11-19.1l-6.4-7.5L580 39.4c-5.7-4.4-12-8-18.7-10.8l-10.6 18.3-9.7-1.8c-7.3-1.4-14.8-1.4-22.1 0l-9.7 1.8-10.6-18.3C492 31.3 485.7 35 480 39.4l10.6 18.3-6.4 7.5c-4.8 5.7-8.6 12.1-11 19.1l-3.3 9.3h-21.1c-.9 7.1-.9 14.4 0 21.5h21.1l3.3 9.3c2.5 7 6.2 13.4 11 19.1l6.4 7.5-10.6 18.4c5.7 4.4 12 8 18.7 10.8l10.6-18.3 9.7 1.8c7.3 1.4 14.8 1.4 22.1 0l9.7-1.8zM145.3 454.4v-31.6c-12.9-5.5-25.1-12.6-36.4-21.1l-27.5 15.9c-9.8 5.6-22.1 3.7-29.7-4.6-24.2-26.3-38.5-49.5-50.6-88.1-3.4-10.7 1.1-22.3 10.8-28L39.2 281c-1.7-14-1.7-28.1 0-42.1l-27.3-15.8c-9.7-5.6-14.2-17.3-10.8-28 12.1-38.4 26.2-61.6 50.6-88.1 7.6-8.3 20-10.2 29.7-4.6l27.4 15.9c11.3-8.5 23.5-15.5 36.4-21.1V65.6c0-11.3 7.8-21 18.8-23.4 34.7-7.8 62-8.7 101.7 0 11 2.4 18.9 12.2 18.9 23.4v31.6c12.9 5.5 25.1 12.6 36.4 21l27.4-15.8c9.8-5.6 22.2-3.7 29.8 4.6 26.9 29.6 41.5 55.9 52.1 88.5 3.4 10.5-.8 21.9-10.2 27.7l-25 15.8c1.7 14 1.7 28.1 0 42.1l28.1 17.5c8.6 5.4 13 15.6 10.8 25.5-6.9 31.3-33 64.6-55.9 89.2-7.6 8.2-19.9 10-29.6 4.4L321 401.8c-11.3 8.5-23.5 15.5-36.4 21.1v31.6c0 11.2-7.8 21-18.8 23.4-37.5 8.3-64.9 8.2-101.9 0-10.8-2.5-18.6-12.3-18.6-23.5zm32-6.2c24.8 5 50.5 5 75.3 0v-47.7l10.7-3.8c16.8-5.9 32.3-14.9 45.9-26.5l8.6-7.4 41.4 23.9c16.8-19.1 34-41.3 42.1-65.2l-41.4-23.9 2.1-11.1c3.2-17.6 3.2-35.5 0-53.1l-2.1-11.1 41.4-23.9c-8.1-23.9-25.3-46.2-42.1-65.2l-41.4 23.9-8.6-7.4c-13.6-11.7-29-20.6-45.9-26.5l-10.7-3.8V71.8c-24.8-5-50.5-5-75.3 0v47.7l-10.7 3.8c-16.8 5.9-32.3 14.9-45.9 26.5l-8.6 7.4-41.4-23.9A192.19 192.19 0 0 0 33 198.5l41.4 23.9-2.1 11.1c-3.2 17.6-3.2 35.5 0 53.1l2.1 11.1L33 321.6c8.1 23.9 20.9 46.2 37.7 65.2l41.4-23.9 8.6 7.4c13.6 11.7 29 20.6 45.9 26.5l10.7 3.8v47.6zm38.4-105.3c-45.7 0-82.9-37.2-82.9-82.9s37.2-82.9 82.9-82.9 82.9 37.2 82.9 82.9-37.2 82.9-82.9 82.9zm0-133.8c-28 0-50.9 22.8-50.9 50.9s22.8 50.9 50.9 50.9c28 0 50.9-22.8 50.9-50.9s-22.8-50.9-50.9-50.9zm322.9 291.7l-2.5-3.9c-4.1.3-8.1.3-12.2 0l-2.5 4c-5.8 9.2-17.1 13.4-27.5 10.1-13.8-4.3-23-8.8-34.3-18.1-9-7.4-11.2-20.3-5.4-30.4l2.5-4.3c-2.3-3.4-4.3-6.9-6.1-10.6h-9.1c-11.6 0-21.4-8.2-23.6-19.6-2.6-13.7-2.7-24.2.1-38.5 2.1-11.3 12.1-19.5 23.6-19.5h9c1.8-3.7 3.8-7.2 6.1-10.6l-2.6-4.5c-5.8-10-3.6-22.7 5.2-30.3 10.6-9.1 19.7-14.3 33.5-19 10.8-3.7 22.7.7 28.5 10.6l2.6 4.4c4.1-.3 8.1-.3 12.2 0l2.6-4.4c5.8-9.9 17.7-14.3 28.6-10.5 13.3 4.5 22.3 9.6 33.5 19.1 8.8 7.5 10.9 20.2 5.1 30.2l-2.6 4.4c2.3 3.4 4.3 6.9 6.1 10.6h5.1c11.6 0 21.4 8.2 23.6 19.6 2.6 13.7 2.7 24.2-.1 38.5-2.1 11.3-12.1 19.5-23.6 19.5h-5c-1.8 3.7-3.8 7.2-6.1 10.6l2.5 4.3c5.9 10.2 3.5 23.1-5.5 30.5-10.7 8.8-19.9 13.4-34 17.9-10.5 3.2-21.9-.9-27.7-10.1zm12.2-34.6l10.6 18.3c6.7-2.8 12.9-6.4 18.7-10.8l-10.6-18.3 6.4-7.5c4.8-5.7 8.6-12.1 11-19.1l3.3-9.3h21.1c.9-7.1.9-14.4 0-21.5h-21.1l-3.3-9.3c-2.5-7-6.2-13.4-11-19.1l-6.4-7.5 10.6-18.3c-5.7-4.4-12-8-18.7-10.8l-10.6 18.3-9.7-1.8c-7.3-1.4-14.8-1.4-22.1 0l-9.7 1.8-10.6-18.3c-6.7 2.8-12.9 6.4-18.7 10.8l10.6 18.3-6.4 7.5c-4.8 5.7-8.6 12.1-11 19.1l-3.3 9.3h-21.1c-.9 7.1-.9 14.4 0 21.5h21.1l3.3 9.3c2.5 7 6.2 13.4 11 19.1l6.4 7.5-10.6 18.3c5.7 4.4 12 8 18.7 10.8l10.6-18.3 9.7 1.8c7.3 1.4 14.8 1.4 22.1 0l9.7-1.8zM560 408c0-17.7-14.3-32-32-32s-32 14.3-32 32 14.3 32 32 32 32-14.3 32-32zm0-304.3c0-17.7-14.3-32-32-32s-32 14.3-32 32 14.3 32 32 32 32-14.4 32-32z" ] [] ]


searchLocation : Int -> Color -> Element msg
searchLocation =
    icon "0 0 512 512" [ Svg.path [ d "M208 112c-40.78 0-73.83 33.05-73.83 73.83 0 32.96 48.25 93.05 66.74 114.86a9.24 9.24 0 0 0 14.18 0c18.49-21.81 66.74-81.89 66.74-114.86 0-40.78-33.05-73.83-73.83-73.83zm0 96c-13.25 0-24-10.75-24-24 0-13.26 10.75-24 24-24s24 10.74 24 24c0 13.25-10.75 24-24 24zm300.47 260.88l-121.39-121.4c-2.3-2.3-5.3-3.5-8.5-3.5h-13.2c31.5-36.5 50.6-84 50.6-135.99C415.98 93.1 322.88 0 207.99 0S0 93.1 0 207.99c0 114.89 93.1 207.99 207.99 207.99 52 0 99.49-19.1 135.99-50.6v13.2c0 3.2 1.3 6.2 3.5 8.5l121.39 121.39c4.7 4.7 12.3 4.7 17 0l22.6-22.6c4.71-4.69 4.71-12.29 0-16.99zm-300.48-100.9c-88.4 0-159.99-71.6-159.99-159.99C48 119.59 119.59 48 207.99 48c88.39 0 159.99 71.6 159.99 159.99 0 88.4-71.6 159.99-159.99 159.99z" ] [] ]


sun : Int -> Color -> Element msg
sun =
    icon "0 0 512 512" [ Svg.path [ d "M256 143.7c-61.8 0-112 50.3-112 112.1s50.2 112.1 112 112.1 112-50.3 112-112.1-50.2-112.1-112-112.1zm0 192.2c-44.1 0-80-35.9-80-80.1s35.9-80.1 80-80.1 80 35.9 80 80.1-35.9 80.1-80 80.1zm256-80.1c0-5.3-2.7-10.3-7.1-13.3L422 187l19.4-97.9c1-5.2-.6-10.7-4.4-14.4-3.8-3.8-9.1-5.5-14.4-4.4l-97.8 19.4-55.5-83c-6-8.9-20.6-8.9-26.6 0l-55.5 83-97.8-19.5c-5.3-1.1-10.6.6-14.4 4.4-3.8 3.8-5.4 9.2-4.4 14.4L90 187 7.1 242.5c-4.4 3-7.1 8-7.1 13.3 0 5.3 2.7 10.3 7.1 13.3L90 324.6l-19.4 97.9c-1 5.2.6 10.7 4.4 14.4 3.8 3.8 9.1 5.5 14.4 4.4l97.8-19.4 55.5 83c3 4.5 8 7.1 13.3 7.1s10.3-2.7 13.3-7.1l55.5-83 97.8 19.4c5.4 1.2 10.7-.6 14.4-4.4 3.8-3.8 5.4-9.2 4.4-14.4L422 324.6l82.9-55.5c4.4-3 7.1-8 7.1-13.3zm-116.7 48.1c-5.4 3.6-8 10.1-6.8 16.4l16.8 84.9-84.8-16.8c-6.6-1.4-12.8 1.4-16.4 6.8l-48.1 72-48.1-71.9c-3-4.5-8-7.1-13.3-7.1-1 0-2.1.1-3.1.3l-84.8 16.8 16.8-84.9c1.2-6.3-1.4-12.8-6.8-16.4l-71.9-48.1 71.9-48.2c5.4-3.6 8-10.1 6.8-16.4l-16.8-84.9 84.8 16.8c6.5 1.3 12.8-1.4 16.4-6.8l48.1-72 48.1 72c3.6 5.4 9.9 8.1 16.4 6.8l84.8-16.8-16.8 84.9c-1.2 6.3 1.4 12.8 6.8 16.4l71.9 48.2-71.9 48z" ] [] ]
