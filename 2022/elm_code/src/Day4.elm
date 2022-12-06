module Day4 exposing (..)


type alias Range =
    { from : Int
    , to : Int
    }


fullyContainedPairs : String -> Int
fullyContainedPairs _ =
    0


isContained : Range -> Range -> Bool
isContained r1 r2 =
    (r1.from >= r2.from && r1.to <= r2.to) || (r2.from >= r1.from && r2.to <= r1.to)


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
