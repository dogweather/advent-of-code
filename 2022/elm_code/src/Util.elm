module Util exposing (..)


toLines : String -> List String
toLines input =
    String.split "\n" input


count : (a -> Bool) -> List a -> Int
count func list =
    list
        |> List.filter func
        |> List.length
