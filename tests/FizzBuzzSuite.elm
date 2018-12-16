module Example exposing (suite)

import Expect exposing (Expectation)
import FizzBuzz exposing (..)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite =
    describe "fizzbuzz"
        [ test "multiple of 3"
            (\_ ->
                fizzBuzz 6
                    |> Expect.equal "Fizz"
            )
        , test "multiple of 5"
            (\_ ->
                fizzBuzz 10
                    |> Expect.equal "Buzz"
            )
        , test "multiple of 5 and multiple of 3"
            (\_ ->
                fizzBuzz 15
                    |> Expect.equal "FizzBuzz"
            )
        , test "not multiple of 5 or multiple of 3"
            (\_ ->
                fizzBuzz 22
                    |> Expect.equal "22"
            )
        , test "handles upper range"
            (\_ ->
                fizzBuzz 100
                    |> Expect.equal "Buzz"
            )
        , test "handles lower range"
            (\_ ->
                fizzBuzz 1
                    |> Expect.equal "1"
            )
        ]
