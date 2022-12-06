module Day3 exposing (..)

import Set


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


findMisplacedType : String -> Char
findMisplacedType longString =
    longString
        |> splitInHalf
        |> findCommonCharacter


calculatePriority : Char -> Int
calculatePriority itemType =
    if Char.isLower itemType then
        Char.toCode itemType - 96

    else
        Char.toCode itemType - 38


splitInHalf : String -> List String
splitInHalf input =
    let
        actualLen =
            String.length input // 2
    in
    [ String.left actualLen input, String.right actualLen input ]


findCommonCharacter : List String -> Char
findCommonCharacter strings =
    let
        listOfSets =
            strings
                |> List.map String.toList
                |> List.map Set.fromList
    in
    case listOfSets of
        [ letters1, letters2 ] ->
            Set.intersect letters1 letters2
                |> Set.toList
                |> List.head
                |> Maybe.withDefault '-'

        _ ->
            '-'
