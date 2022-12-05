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
calculateScore _ =
    10
