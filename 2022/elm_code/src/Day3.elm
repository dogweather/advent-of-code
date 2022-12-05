module Day3 exposing (..)


prioritiesSum : String -> Int
prioritiesSum input =
    input
        |> toLines
        |> List.map findMisplacedType
        |> List.map calculatePriority
        |> List.sum


toLines : String -> List String
toLines input =
    String.split "\n" input


findMisplacedType : String -> String
findMisplacedType _ =
    "p"


calculatePriority : String -> Int
calculatePriority _ =
    10
