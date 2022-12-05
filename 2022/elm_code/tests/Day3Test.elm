module Day3Test exposing (..)

import Day3
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Day3"
        [ describe "prioritiesSum"
            [ test "with sample data"
                (\_ ->
                    Day3.prioritiesSum sampleData
                        |> Expect.equal 157
                )

            -- , test "with input data"
            --     (\_ ->
            --         Day3.prioritiesSum inputData
            --             |> Expect.equal 17189
            --     )
            ]

        -- , describe "revisedScore"
        --     [ test "with sample data"
        --         (\_ ->
        --             Day3.revisedScore sampleData
        --                 |> Expect.equal 12
        --         )
        --     , test "with input data"
        --         (\_ ->
        --             Day3.revisedScore inputData
        --                 |> Expect.equal 13490
        --         )
        --     ]
        ]


sampleData : String
sampleData =
    """vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw"""


inputData : String
inputData =
    """"""
