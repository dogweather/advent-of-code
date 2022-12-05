module Day2 exposing (score)


score : String -> Int
score input =
    input
        |> toLines
        |> toScores
        |> List.sum


toLines : String -> List String
toLines input =
    String.split "\n" input


toScores : List String -> List Int
toScores input =
    input
        |> List.map calculateScore


calculateScore : String -> Int
calculateScore input =
    let
        moves =
            String.split " " input
    in
    shapeScore moves + outcomeScore moves


shapeScore : List String -> Int
shapeScore moves =
    case moves of
        [ _, "X" ] ->
            1

        [ _, "Y" ] ->
            2

        [ _, "Z" ] ->
            3

        _ ->
            0


outcomeScore : List String -> Int
outcomeScore _ =
    0
