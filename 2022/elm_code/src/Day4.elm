module Day4 exposing (..)

import Util


type alias Range =
    { from : Int
    , to : Int
    }


fullyContainedPairs : String -> Int
fullyContainedPairs input =
    input
        |> Util.toLines
        |> Util.count hasContained


overlappingPairs : String -> Int
overlappingPairs input =
    input
        |> Util.toLines
        |> Util.count hasOverlapping


hasContained : String -> Bool
hasContained input =
    let
        ranges =
            input
                |> String.split ","
                |> List.map toRange
    in
    case ranges of
        [ r1, r2 ] ->
            isContained r1 r2

        _ ->
            False


hasOverlapping : String -> Bool
hasOverlapping input =
    let
        ranges =
            input
                |> String.split ","
                |> List.map toRange
    in
    case ranges of
        [ r1, r2 ] ->
            isOverlapping r1 r2

        _ ->
            False


isContained : Range -> Range -> Bool
isContained r1 r2 =
    (r1.from >= r2.from && r1.to <= r2.to) || (r2.from >= r1.from && r2.to <= r1.to)


isOverlapping : Range -> Range -> Bool
isOverlapping r1 r2 =
    not ((r1.from < r2.from && r1.to < r2.from) || (r2.from < r1.from && r2.to < r1.from))


toRange : String -> Range
toRange rangeString =
    let
        numbers =
            rangeString
                |> String.split "-"
                |> List.map String.toInt
                |> List.filterMap (\x -> x)
    in
    case numbers of
        [ x, y ] ->
            { from = x, to = y }

        _ ->
            { from = 0, to = 0 }
