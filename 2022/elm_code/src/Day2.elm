module Day2 exposing (score)

import Json.Decode exposing (string)


score : String -> Int
score input =
    input
        |> toLines
        |> sum



-- |> toScores
-- |> sum


toLines : String -> List String
toLines input =
    Debug.log "lines" (String.split "\n" input)


sum : List String -> Int
sum _ =
    0
