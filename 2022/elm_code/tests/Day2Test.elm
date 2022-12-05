module Day2Test exposing (suite)

import Day2
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Day2"
        [ describe "score"
            [ test "with sample data"
                (\_ ->
                    Day2.score sampleData
                        |> Expect.equal 15
                )
            ]
        ]


sampleData : String
sampleData =
    """
A Y
B X
C Z
"""
