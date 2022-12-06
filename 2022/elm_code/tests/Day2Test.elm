module Day2Test exposing (suite)

import Day2
import Expect
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
            , test "with input data"
                (\_ ->
                    Day2.score inputData
                        |> Expect.equal 17189
                )
            ]
        , describe "revisedScore"
            [ test "with sample data"
                (\_ ->
                    Day2.revisedScore sampleData
                        |> Expect.equal 12
                )
            , test "with input data"
                (\_ ->
                    Day2.revisedScore inputData
                        |> Expect.equal 13490
                )
            ]
        ]


sampleData : String
sampleData =
    """A Y
B X
C Z"""


inputData : String
inputData =
    """A X
B Z
C Z
B Z
B Z
A Y
A Y
A Z
A Y
B Y
A Y
B Y
B Z
A Y
C X
B X
A Y
B Z
B X
A Y
A Y
A Z
B Z
B Z
C Y
C Y
B Z
A Y
A Y
B Z
B X
B Z
A Z
A X
C X
A Y
B Z
A Y
B Z
B Z
B Z
B Z
A Y
A Y
C Y
A Y
A Y
A Y
B Z
A Y
A Z
B X
B Z
A Y
A Y
A Y
B Z
C X
B Z
A Y
B Z
A Y
A Y
A Y
A Z
A X
C X
A Y
C Z
C X
C X
B Z
A Z
A Z
B Z
A Z
A X
C X
A X
C X
A Y
B Z
A Z
B Z
A Y
B Z
C X
A Y
B Z
A Z
B Z
A Y
A Z
B Z
A X
C X
A X
A Y
B Z
B Z
A Y
B Z
B Z
C Z
A Y
A Y
C Y
A Z
B Z
A Y
C X
A Y
B Z
A Y
C X
A Y
B Z
A Y
C X
C X
B Z
B Z
B Z
A Y
A X
C X
A Y
A Y
A Y
A Y
A Y
A Y
B Z
A Z
A Y
A Z
B Z
B Z
B Z
A Y
B Z
A X
A Y
A Z
A Z
A Y
A Y
B Z
A Y
C X
B Z
A Y
B Z
C X
A Y
A Y
B Z
C X
A Y
A Y
A X
A Z
A Y
A Z
A Y
A Y
B Z
B Z
A Y
C X
B Z
B Y
A Y
C Y
A Y
A Z
B Y
B X
A X
B Z
B Z
A Y
A X
A Y
A Y
A Y
A Z
A Y
A X
B Z
A Z
A Z
A Y
C Z
A Y
B Z
C X
A Z
C X
B Z
A Y
C Z
A Z
B Z
A Y
A Y
B Z
A Y
C X
C X
A Z
A Z
A Y
A Y
A Y
A Y
C X
C X
A Z
A Z
C X
B Z
C Y
A Y
A Y
A Y
A Z
B X
C Z
A Y
B Z
A Z
A X
A Y
A Y
B Z
C Y
A Y
A Z
A Y
C X
C X
A Z
A Y
B Z
A Y
A Z
C X
A Z
A Y
A Y
A Z
B Z
A Y
A Y
C X
A Y
C X
B Z
A X
B Z
B Z
A Y
A Y
A Y
A Y
A Y
A Y
B Z
A Y
A Y
A Z
B Z
A Y
A Y
A Z
B Z
A Y
C X
A Y
B Y
B Z
A Y
B Z
A Y
A Y
A X
A Z
A X
B Z
B Z
A Y
A Y
C X
A Z
A X
A Y
A Y
A Y
C X
A Y
A Z
B Z
A X
B Z
A Y
A Z
C X
B X
A Y
C X
A Y
A Y
A Y
A Y
B Z
C X
B X
A Y
B Z
A Z
C X
B Z
B Z
C X
A Z
C X
B Z
C Y
B Z
B Y
B Z
B Z
B Z
C Z
C X
A Y
C X
B Z
A Y
A X
B Z
C X
A Y
A Y
A Z
B Z
B Z
C X
B Z
A X
B Z
A Y
A Y
B Z
A Y
A Y
A X
A Z
B Z
B Z
A Z
A Z
A Y
B X
A Y
C X
A X
A Y
A X
A Y
A X
C X
B Z
A Y
B Z
A Y
B Z
B X
B Z
A Y
B Z
B Z
C X
A Z
A Y
B Z
B Z
C Y
A Y
B X
B Z
B Z
A Y
B Z
C X
A Y
A Y
B Z
B Z
B Z
C X
A Y
A Z
C X
A Z
C X
B Z
A Y
A Y
B Z
A Y
B Y
B Y
A Z
A Y
B Z
A Y
C X
A Z
A Y
A Z
A X
A Y
A Y
A Z
C X
B Z
A Y
A Y
A Y
C X
B Z
C Y
A Y
B X
B Z
B Y
B Z
A Y
A X
A Y
A X
A X
B Z
A Y
A Z
B Z
B X
A Y
C Z
C X
B Z
B Z
C X
A Y
B Z
A Y
B Z
B Z
A Y
A Y
B Y
A Y
B Z
B Z
A X
B Z
A Y
A Y
B X
A Y
B X
C X
B Z
A Y
B X
A Z
A Y
A Y
A Y
B Z
C X
A Y
B Z
C Y
A Y
B Z
A Z
C X
A Y
A Y
C X
A Y
B Y
A Z
A X
A Y
C X
B Z
C X
B Z
A Y
A Z
B X
B Y
C X
B Z
A Y
C Z
A Y
B Z
B Z
A Z
B Z
B Z
B Z
B X
A Z
B Z
B Z
C X
A Y
A Z
B Z
A Y
B Z
A Z
C X
A Y
B Z
C Z
C X
B Z
C X
A Y
A Y
A X
A Y
B X
A Z
A Y
C Z
C X
A Z
A Y
B Z
A Y
A Y
A Y
A Z
B Z
B Z
C X
A Y
A Y
A Y
A Y
A Z
A Y
C X
B X
B Z
C X
A Y
A Y
A Z
C X
A Y
A Y
A Y
B Z
A Y
B Y
A Y
B Z
B Z
B Z
A X
C X
A Y
B Y
A Z
C X
A Y
A Y
A Y
B Z
A Y
A Y
C Y
A Y
A Y
A Y
C X
A Z
A Y
A Y
A Y
C X
B Z
A Y
C X
B X
A Z
A Z
A X
A Z
A Y
B Y
C X
B Z
C X
C Z
A Y
C X
A Z
C X
B Z
B Z
A X
B Y
B Z
C Y
B Z
A Z
C X
A X
B Z
B Z
A Y
A Y
A Y
A X
A Z
B Z
A Y
A Y
A Y
A Y
A Z
B Z
B Z
B Z
A X
A Y
B Z
A Z
B Y
A Y
A Y
A Z
A Y
C Z
A Z
B Z
A Y
C X
A Y
C X
B Z
B Z
B Z
A Y
A Y
C X
B Z
C X
A Z
A Y
C Y
C X
C X
A Y
C X
B Z
B Z
B X
C X
B Z
A Y
A Y
A Y
A Y
A Y
B X
A Y
C X
C X
A Y
B Z
C X
C X
A Y
C Y
B Z
B Z
C X
A Z
B Z
A Y
A Z
A Z
A Y
A Y
A Y
B Y
B Z
A X
A Y
A Y
B Z
C X
C X
B Z
B Z
A Y
B X
C X
B Z
A Y
B Z
A Z
A X
A Y
A X
B Z
A Z
B Z
A Z
B Z
A Y
A Y
A Y
B Z
A X
A Y
A Y
C Z
A Y
A Y
C X
A Z
A Z
B Z
B X
A Y
A X
A Y
C X
C X
B Z
B Z
B Z
A Y
A Y
A Z
A Y
C X
C X
A Z
A X
A Z
B Z
A Z
A X
B Z
A Y
B Z
A Z
C X
C X
C Y
A Y
A Y
A Y
C Y
A Y
B Z
A X
A Y
A Z
A Y
B Z
A Z
B Z
B Z
A X
C X
A Y
A Y
B Z
B Z
A X
A Z
A X
C X
B Z
A Z
A Z
A Y
A Z
B Z
C X
A Z
B Z
A Y
A Z
A Y
C X
A Y
A Y
B Z
B Z
B Z
A Y
A Y
B Z
B X
C X
A Y
A Z
A Z
B Z
C X
B Y
A Z
A Z
B X
C Z
C X
A Y
A Z
A Z
C X
B Z
B Z
B Z
A Y
A Y
B Z
B Z
A Z
C X
B Z
B Z
A Y
A Y
A Z
A Y
C X
B X
A Z
C X
A Y
B Z
A Y
A Z
A Y
A Y
B Z
B Z
C X
A Y
A Y
B Z
A Z
A Y
A Y
A Y
A Y
C Z
A X
B Z
B Z
A Y
A Y
C X
A Y
C X
B Z
B Z
A Z
A Y
A Y
A Y
A Y
C X
B Z
A Y
B Z
A X
A Y
A Y
A Y
C Y
A Y
B Z
C X
A Y
A Y
A Y
A Y
A Y
A Y
A Z
A X
B Y
B Z
B Z
A Y
C Y
C X
A Y
B Z
A Y
B X
A X
B Z
A Y
A Y
A Y
A Y
C Y
A Y
B Z
A Y
B Z
A Z
B Z
A Y
A Y
A Z
B Z
A Y
A Y
A Y
B Z
A Y
B Z
B Z
A Y
A Y
A Y
A Y
A Z
A Y
A X
A Y
B Y
B Z
B Z
A Y
C X
B Z
B Y
B Y
C Z
C X
A Y
B Z
B Y
B Z
B X
A Z
A Y
C X
A Y
A Y
C X
A Y
C Y
B Y
C X
A Z
A Z
A Y
A Y
A X
C X
B Z
C X
C X
C X
A Y
A Y
A Y
A Z
C Y
A Z
B Z
C X
B Z
A Z
A Y
B Z
C X
B Z
C Z
C X
B X
A Y
C Z
C Z
B Z
B Z
A Y
B Y
B Z
A Y
A Y
B Z
A Z
C X
A Z
A Z
A Z
B Y
B Z
A Y
A Y
B Z
A Y
A Z
C X
A Y
A Z
A Z
A Y
A Y
B Z
A Y
A Y
A Y
A Y
A Y
A Z
B Z
A Y
B Z
B X
A Y
A Z
B Z
A Z
A Y
B Z
A Y
B Z
A Y
C X
A Y
B Z
A Y
B Z
A Y
A Y
A Y
B Z
A Y
B Z
C X
B Z
B Z
A Y
A X
A X
A X
A Y
C Y
A X
B Z
A X
C X
C X
C X
B Z
A Y
C X
C X
C Y
B Z
A X
A Y
A X
A X
B Y
C Z
A Y
C X
B Z
C Y
B Z
B Z
C Z
A Y
B Z
C X
A Y
C X
B Z
A Y
A Y
A Z
A Y
A Y
B Z
A Y
C X
C X
B Z
B Z
C X
A X
A Y
B Y
A X
A X
A Z
B Z
A Z
C X
A X
A Y
B Z
A Y
A Y
A X
A Y
A Y
A Z
A Y
B Z
C Z
B Z
B Z
A Y
C X
A Y
A Y
B Z
C Y
C X
A Y
A Y
A Y
A Z
A Y
A Y
A Y
B Z
C X
A Z
C X
B Z
A Y
B X
B Z
B Z
A Y
A Y
C X
B Z
A X
C X
A Z
B Z
B Z
C X
B Y
C X
A Y
A Z
C X
A Y
B Z
C X
A Y
A X
A X
A Y
C Y
B X
A Y
B X
A Y
A Y
C X
A Z
A Y
A Z
B Z
A Y
C X
A Z
B Z
A Y
C Z
A X
C X
A X
C Y
A Y
A Z
B Y
C X
B Z
A Y
C X
A Y
A Y
A Y
B Y
A X
C X
A Y
A Y
C X
B Z
A Z
A X
A Y
A Y
A Y
A Z
A Z
B Z
A Z
A Y
A Z
A Y
C X
A Z
C X
B Z
B Z
A X
A Y
B X
B Z
B Z
A Y
B X
A X
A X
A Y
A Y
C X
C X
A Y
C Y
A Y
C X
B Z
C X
B Z
A Z
B Y
A Y
B Z
A Y
C Y
B Z
B Z
A Y
A Y
B Z
A Y
B Z
B Z
A Z
A Y
A X
A Y
A Y
A Y
A Y
A Z
B Z
A Y
A Y
A Y
B Z
A Y
C X
C X
B Z
A Y
B Z
B X
A Y
C Z
A Z
A Y
B Z
A X
C X
B X
A Y
A Z
A Y
A Y
B Z
A Y
B Z
A Y
C X
A Y
A X
A Y
C X
A Y
C X
C X
B Z
A Y
B Z
A X
B Z
A Z
C X
B Z
A Y
A Y
A Z
B Z
A X
A Y
A Y
A Z
A Y
A X
A Y
C Y
A Y
A Y
A Y
A Z
A Y
B Z
B Z
A Y
A X
C X
B Z
B Z
A Z
A Y
A Z
B Z
A Y
A Y
C X
B Z
A X
A Y
B Z
A Y
B Z
B Z
B Z
A X
B Z
B Z
A Y
A Y
A Y
B Z
A Y
A X
B Z
A Y
B Z
A Y
A Y
B Z
A Y
A Y
B Z
A X
A Z
B X
A Y
B Z
C X
A Y
A Y
C Z
A Y
C X
A X
B Z
A Y
C X
A Z
A Y
B Z
A Z
A X
A Y
C X
A Z
A X
A Y
A X
B Z
B X
A Y
A Y
A Y
C X
A Y
A Y
B Z
B X
B Z
B Z
C X
C X
B Z
B Z
B Z
A Y
B Z
A Z
A Y
C X
B Z
A Y
A Y
B Z
C X
A Y
C X
A Y
B Z
A Z
A Y
A Y
A Y
B X
C X
B Z
B X
A Y
A Y
C X
A Y
A Z
C X
A Y
A Z
B Z
A Y
A Y
A Y
A Y
A Y
B Z
A Y
C X
A Y
B Z
C X
A X
B Z
C X
A Y
A Y
A Y
A Z
A X
A Y
C Y
A Y
A Z
A Y
A Y
B Z
A Y
B Z
A Y
C Y
A Z
A Y
C Z
A X
A Y
A Y
C Y
A Z
A X
C X
B X
A Y
C X
A Y
A Y
A Y
C Y
C X
A Y
B Z
A Y
A Y
A Y
A Z
A X
A Y
A Y
A Y
B Z
C Y
B Z
A Y
B Z
B Z
A Z
B Z
A X
B Z
C Y
A Y
A Y
C X
B Z
A Y
A Z
C X
B Z
A Z
B Z
C X
B X
C X
C X
C X
A Z
A Y
A Z
A Y
B Z
A Y
B Z
C X
A Y
B Z
B Z
A Y
A Y
B Z
A X
A Z
B Z
B Z
A Y
A Y
A Z
C X
A X
B Y
A Y
B Z
C X
A Y
A Y
A Y
A Y
A Y
B Z
B Z
B Z
A Y
A X
A Y
A X
B Y
B Z
A Z
A Y
A Y
A Y
B Z
B Y
C X
A Z
C Z
A Z
C Y
B Z
A Z
C Z
A Y
B Z
A Y
A Z
A Y
A Y
A Y
A Y
A Y
B Z
A Z
A Y
B X
C Y
C X
A Y
B Z
B Z
A Y
B Y
B Z
B Z
C X
C X
C X
B Z
A X
B Z
A Y
A Y
B X
A Z
A Y
B Z
A Z
A Y
B Z
B Z
C Y
B Z
B Z
B Z
B Z
A Z
B Z
A Y
B Z
A Y
C X
A Y
B Z
A Y
A Y
C X
A Y
A Y
A Y
A Y
B Z
A Y
A Y
A Y
A Z
C X
A Y
A Y
A Y
B Z
C X
A X
A Y
B X
C X
A Z
A X
B Z
A Y
C Y
C X
A Y
A Z
B Z
A Y
A Y
A Z
A Y
A Y
B Z
C Z
C X
A Y
A Y
C X
A Y
A X
B Z
C Z
A Y
B Z
C X
B Y
A Y
B X
A Y
A Y
B Z
B Z
A X
A Z
A Z
B Z
A Y
B Z
A Y
A Y
B Z
B Z
B X
A Y
B X
C X
B Z
B X
A Y
B Y
C X
A Y
A Z
A Y
B Z
A Y
B Z
A Y
B Z
A Y
A Y
A Y
A Z
B Z
A Y
B X
B X
B Z
B Z
A Z
B Z
B Z
A Y
C X
C Y
B Z
A Z
A Z
A Z
B Z
B Z
A Y
C X
A Y
A Y
C Y
A Z
A Y
A Y
A Y
A Y
A Y
B Z
A Y
C Y
B Z
B Z
A Y
A Y
A Y
A Y
A Y
B Z
B Z
A Y
B Z
B Z
B Z
A Y
A Y
C Z
B Y
A Y
C X
A Z
B Z
B Z
B Z
B Z
A X
A Y
A X
B Z
A Y
A X
A Y
B Z
B Z
C X
C Y
B Z
A Y
A Z
B X
A Z
A Y
A Z
A Y
C X
B Z
A Y
C Z
A Z
B Z
A Y
C X
B Z
A Z
A Y
A Y
A Y
A Z
C X
B X
A Y
C X
A Y
A Y
A Y
C X
A Y
A Y
A Y
A Y
A Y
A Y
B Z
A Y
B Z
B Z
B Z
A Y
A Y
A Y
A Y
A Z
A Y
B Z
B Z
C X
B Z
A Z
B Z
A Z
A Y
A X
B Z
A Y
A Y
B Z
B Z
A Y
B Z
B Z
A Y
A Y
B Z
B Z
A X
B Z
A Z
B Z
C X
B Z
A Y
B Y
A Y
B Z
A Y
C X
A Z
B Z
A Y
A Y
C X
A X
A Z
A Y
A Y
A Y
B Z
A X
A Z
A Y
A Y
A Y
A Y
C X
C X
B Z
B Z
A Y
A X
C X
B Z
B Z
B Z
A Z
B Z
B Z
B Z
A Z
A X
A Y
B Z
A X
B Z
A X
B X
B X
B Z
A Z
C X
A X
B Z
B Z
A Y
C Y
B Z
B Z
B Z
B Z
A Y
C X
B Z
B Z
A X
B Z
A Y
C X
C Z
A Y
A Y
B Z
B Z
A Z
A Y
B Z
C X
B Z
A Y
A Y
C X
A Y
A Y
A X
A Y
A Y
A Z
C X
A X
B Z
C X
A X
A Y
A Y
B Z
A Z
A Y
A X
B Z
A Y
A Y
A Z
A Y
A Y
A Y
B Z
C X
C X
A Y
A Y
A X
A Z
A Y
B X
C X
C X
B Z
A Y
B Z
B Z
A Y
A Y
A Y
A X
B X
A Y
B Z
A Y
A X
A Y
C Y
A Y
B Z
A Y
A X
B X
B Z
A Y
B Z
B Z
C X
A Z
A Y
B Z
A X
A Y
A Y
C X
B Z
B Z
A Z
A Y
A Z
A Z
B Z
B Z
A X
A Y
C X
A Y
B Z
B Z
A Y
A Y
A Z
A Y
A Y
A Y
A Y
C X
B Z
A Y
B Z
A Z
B Z
A Y
B Z
A Y
B Z
A Y
C X
A X
A Y
B X
C X
B Z
A Y
A Y
A Z
A Y
A Y
A Y
A Y
A Y
A Y
B Z
A X
B Z
B Z
A Y
C X
A Y
C X
A Z
A Y
C X
A Y
A Y
A Y
C X
A X
A Y
C Y
A Y
A Y
B Y
B Z
C X
A Y
B Z
B Z
A Y
A Y
B Z
A Y
A Y
B Z
A X
A X
B Y
B X
A Y
A Z
C X
A Y
A Y
A Y
A Z
C Z
A Z
A Y
A Z
A Y
A X
B Z
B Z
C X
B Z
C X
C X
A Z
A Y
A Y
A Y
A Y
A Y
C X
B Z
B Y
B Z
A Y
B Y
A Y
A Y
A Y
B Z
A Z
C Z
A Z
B Y
A Y
A Y
B Z
B Y
A Z
A Y
A Z
A Y
C X
B Z
B Z
A Z
A X
C X
A X
A X
B Z
C X
A Y
A Y
A Z
C X
C Y
C X
A Y
B Z
A Y
A X
A Z
B Z
A Y
A Y
A Y
B Z
A Y
B Z
B Y
B Z
B Z
B Z
B Z
A Y
B Z
B Z
A X
C Y
C X
A Y
A Z
B Z
A Y
A Y
A Y
A Y
A Y
A Y
B Z
B Z
A Y
B Y
B Z
A Y
A Y
A Z
A Y
A Y
A Y
B Y
B Z
C X
A Z
A Z
B Z
C Y
C Z
A Z
A Z
A Y
B Z
B Z
B Z
A Z
A Z
B Y
A Y
A X
A Y
B Z
A Y
B Z
A Y
A Y
A Z
B Z
A Y
A X
A Y
A Y
A Y
A Y
A Y
C X
A Y
B Z
A Z
A Y
A Y
A Y
C X
A Y
A Y
A Y
A Y
B Z
A Z
A Y
B X
B Z
B Z
B Z
B Z
A Y
A Y
C X
A Y
A Y
B Z
C X
B Z
B Y
A Y
A Y
A Y
B Z
B Z
B Z
A Y
B Z
B X
B Z
A Y
A Y
B Z
A Y
B Z
C Z
A Y
B Z
A Z
A Y
B Z
A Y
B Z
C X
B Z
A Y
A Y
A Y
A Z
B Z
C X
B X
A Y
A Y
A Y
C Y
B Z
B Z
A Y
A Y
C X
A Y
C Y
B Z
A Y
C X
A Z
A Y
A Y
A Z
A Y
A Y
B Z
B Z
C X
A Z
A Y
A Y
A X
A Y
C X
A Y
B Z
A X
A Z
B Z
C X
A Y
A Y
A Y
A Y
A Y
A Y
A Z
C X
A Y
A Y
B Z
A Z
A Z
A Z
A Y
B X
A Y
C X
A Y
A Y
A X
B Z
A Y
A Z
A Y
A Y
A Z
B Z
B Z
A Y
A Y
A Y
A Z
A X
A Z
C X
A Y
B Z
A Y
A X
A Y
A Z
A Y
A Z
A Y
B Z
A Y
B Z
B Z
B Z
A Y
C X
B Z
A Y
A Y
C X
A Y
A Z
B Z
B Z
A Y
C X
A Y
A Y
A Y
B Z
A Z
A Z
C X
B Z
C Y
B Z
A Y
A Y
A Y
A Y
A Y
C X
A X
A Z
A Y
A Y
B Z
A Y
B Z
B Z
A Y
C X
B Z
B Z
A Y
A Y
B X
C X
B Z
A Y
B Z
B Z
C Y
B Z
C X
A Y
A Y
A Y
C X
A Y
B Z
A Z
B Z
A Y
A Y
C X
A X
A Y
A Z
A Y
A Z
A Y
A Y
C X
A X
A X
C Y
A Y
A Y
A Y
A Y
B Z
C X
B Z
A X
A Y
A X
A X
A X
A Y
B Z
A Z
B X
C Y
C X
C X
C X
B Z
B Z
B Z
A X
A Y
A Y
B Z
C X
A Y
A Y
A Z
A Y
A Y
A X
C X
B Z
B Z
C X
A Y
A Y
A Y"""
