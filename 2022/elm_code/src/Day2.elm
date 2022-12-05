module Day2 exposing (revisedScore, score)


score : String -> Int
score input =
    input
        |> toLines
        |> List.map calculateScore
        |> List.sum


revisedScore : String -> Int
revisedScore input =
    input
        |> toLines
        |> List.map revise
        |> List.map calculateScore
        |> List.sum


toLines : String -> List String
toLines input =
    String.split "\n" input


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
outcomeScore moves =
    case moves of
        [ "A", "X" ] ->
            3

        [ "B", "Y" ] ->
            3

        [ "C", "Z" ] ->
            3

        [ "A", "Y" ] ->
            6

        [ "B", "Z" ] ->
            6

        [ "C", "X" ] ->
            6

        [ "A", "Z" ] ->
            0

        [ "B", "X" ] ->
            0

        [ "C", "Y" ] ->
            0

        _ ->
            0


revise : String -> String
revise line =
    case line of
        "A X" ->
            "A Z"

        "B X" ->
            "B X"

        "C X" ->
            "C Y"

        "A Y" ->
            "A X"

        "B Y" ->
            "B Y"

        "C Y" ->
            "C Z"

        "A Z" ->
            "A Y"

        "B Z" ->
            "B Z"

        "C Z" ->
            "C X"

        l ->
            l
