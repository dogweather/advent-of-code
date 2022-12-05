module Day3 exposing (..)


prioritiesSum : String -> Int
prioritiesSum input =
    input
        |> toLines
        |> List.map findMisplacedType
        |> List.map calculatePriority
        |> List.sum
