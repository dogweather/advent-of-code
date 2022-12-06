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
    r1.from >= r2.from && r1.to <= r2.to
