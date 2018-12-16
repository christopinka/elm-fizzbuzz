module FizzBuzz exposing (fizzBuzz, main)

import Html exposing (..)
import List
import String

fizzBuzz : Int -> String
fizzBuzz n =
    if modBy 3 n == 0 && modBy 5 n == 0 then
        "FizzBuzz"

    else if modBy 3 n == 0 then
        "Fizz"

    else if modBy 5 n == 0 then
        "Buzz"

    else
        String.fromInt n


main : Html msg
main =
    let
        fizzNumbers : List (Html msg)
        fizzNumbers =
        
            List.range 1 100
                |> List.map fizzBuzz
                |> List.map text
                |> List.map List.singleton
                |> List.map (li [])
    in
    ul [] fizzNumbers
