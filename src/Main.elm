module Main exposing (..)

import Browser
import Element exposing (Element, alignRight, centerX, centerY, column, el, fill, height, padding, px, rgb255, row, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import UI.Colors exposing (black, blue, white)
import UI.Icons as Icons



---- MODEL ----


type Model
    = NoLocation LocationInput
    | WithLocation Location


type alias Location =
    String


type alias LocationInput =
    String


init : () -> ( Model, Cmd Msg )
init _ =
    ( WithLocation "Los Angeles", Cmd.none )



-- ( WithLocation "San Jose", Cmd.none )
---- UPDATE ----


type Msg
    = UpdateLocationInput LocationInput
    | SetLocation LocationInput


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateLocationInput input ->
            ( NoLocation input, Cmd.none )

        SetLocation input ->
            ( WithLocation input, Cmd.none )



---- VIEW ----


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Weather"
    , body =
        [ Element.layout
            []
          <|
            case model of
                NoLocation input ->
                    noLocationScreen input

                WithLocation location ->
                    withLocationScreen location
        ]
    }


withLocationScreen : Location -> Element Msg
withLocationScreen location =
    el
        [ width fill
        , height fill
        , Background.gradient nightGradient
        ]
        (column
            [ width fill, height fill ]
            [ headerBar location
            , el
                [ width (fill |> Element.maximum 800), centerY, centerX, height fill ]
                (row
                    [ spacing 15, centerX, centerY ]
                    [ currentWeather
                    , column [ width fill, spacing 15, height fill, Element.explain Debug.todo ]
                        [ upcomingForecastCard
                        , hourlyForecastCard
                        , currentWeather2
                        ]
                    ]
                )
            ]
        )



-- CARDS


currentWeather : Element Msg
currentWeather =
    card
        [ height fill
        ]
        (column
            [ height fill, width fill ]
            [ cardHeader "Current"
            , el [ centerX, centerY, padding 25 ] (Icons.sun 100 white)
            , el [ Font.size 26, centerX, centerY ] (text "64˚ F")
            ]
        )


currentWeather2 : Element Msg
currentWeather2 =
    card
        []
        (column
            []
            [ row []
                [ dayMiniCard Icons.sun ]
            ]
        )



-- (column
--     [ height fill, width fill ]
--     [ cardHeader "Current"
--     , el [ centerX, centerY, padding 25 ] (Icons.sun 100 white)
--     , el [ Font.size 26, centerX, centerY ] (text "64˚ F")
--     ]
-- )


upcomingForecastCard : Element Msg
upcomingForecastCard =
    card
        []
        (column
            [ centerX ]
            [ cardHeader "Today's Snapshot" ]
        )


type alias Icon =
    Int -> Element.Color -> Element Msg


dayMiniCard : Icon -> Element Msg
dayMiniCard icon =
    column
        [ Background.color white
        , Font.color black
        , spacing 15
        , padding 15
        , Border.rounded 4
        , Element.alignTop
        ]
        [ el [ centerX ] (text "Mon")
        , el [ centerX ] (icon 40 blue)
        , el [ centerX ] (text "Sunny")
        , el [ centerX ] (text "Sunny")
        , el [ centerX ] (text "Sunny")
        , el [ centerX ] (text "Sunny")
        , row
            [ centerX, spacing 15 ]
            [ text "H: 76", text "L: 45" ]
        ]


hourlyForecastCard : Element Msg
hourlyForecastCard =
    card
        []
        (column
            [ centerX ]
            [ cardHeader "Today's Snapshot" ]
        )


headerBar : Location -> Element Msg
headerBar location =
    row
        [ width fill, Background.color (rgb255 30 10 90) ]
        [ el
            [ Font.color white
            , Font.size 24
            , padding 15
            , centerX
            ]
            (text location)
        , el [ alignRight, padding 15 ] (Icons.cogs 30 white)
        ]


card : List (Element.Attribute Msg) -> Element Msg -> Element Msg
card attributes content =
    el
        (List.append
            [ Border.rounded 7
            , Background.color (rgb255 0 100 175)
            , Font.color white
            , padding 25
            , width fill
            ]
            attributes
        )
        content


cardHeader : String -> Element Msg
cardHeader string =
    el
        [ centerX
        , Font.size 32
        ]
        (text string)


noLocationScreen : LocationInput -> Element Msg
noLocationScreen input =
    el
        [ width fill
        , height fill
        , Background.gradient dayGradient
        ]
        (el
            [ centerX
            , centerY
            ]
            (locationInput input)
        )


chooseLocationForm : LocationInput -> Element Msg
chooseLocationForm input =
    column
        [ width fill
        , spacing 10
        ]
        [ locationInput input
        , el [ width fill, centerY ] (text "or")
        , el [ width fill, centerY ] (text "Use my current location")
        ]


locationInput : LocationInput -> Element Msg
locationInput input =
    row
        []
        [ Input.text
            [ Border.width 0
            , Border.roundEach { topLeft = 50, topRight = 0, bottomLeft = 50, bottomRight = 0 }
            ]
            { onChange = UpdateLocationInput
            , placeholder = Just (Input.placeholder [ Font.alignLeft ] (text "Location"))
            , label = Input.labelHidden "Location"
            , text = input
            }
        , Input.button
            [ Border.width 0
            , Border.roundEach { topLeft = 0, topRight = 50, bottomLeft = 0, bottomRight = 50 }
            , width (px 50)
            , Background.color (rgb255 15 225 10)
            , height fill
            ]
            { onPress = Just (SetLocation input)
            , label =
                el
                    [ centerY
                    , centerX
                    , Element.moveLeft 2
                    , Element.moveUp 2
                    ]
                    (Icons.searchLocation 25 (rgb255 255 255 255))
            }
        ]


type alias Gradient =
    { angle : Float
    , steps : List Element.Color
    }


dayGradient : Gradient
dayGradient =
    { angle = degrees 180, steps = [ rgb255 0 226 255, rgb255 0 182 222 ] }


nightGradient : Gradient
nightGradient =
    { angle = degrees 180, steps = [ rgb255 75 50 150, rgb255 30 10 90 ] }


cardGradient : Gradient
cardGradient =
    { angle = degrees 0, steps = [ rgb255 0 255 109, rgb255 0 222 162 ] }



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.document
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
