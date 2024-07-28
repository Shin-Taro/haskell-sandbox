module FizzBuzz
    ( fizzBuzz
    ) where

-- 3で割り切れる数に対しては、"Fizz"
-- 5で割り切れる数に対しては、"Buzz"
-- 3でも5でも割り切れる数に対しては"FizzBuzz"

fizzBuzz :: Int -> String

fizzBuzz x
  | (mod x 15) == 0 = "FizzBuzz"
  | (mod x 3) == 0 = "Fizz"
  | (mod x 5) == 0 = "Buzz"
  | otherwise = show x
