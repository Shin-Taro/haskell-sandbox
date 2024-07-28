module FizzBuzzMain (main) where

import FizzBuzz (fizzBuzz)

main :: IO ()
main = do
  input <- getLine
  print $ fizzBuzz $ read input
