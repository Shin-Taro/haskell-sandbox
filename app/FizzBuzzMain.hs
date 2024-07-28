module Main (main) where

import FizzBuzz

main :: IO ()
main = do
  input <- getLine
  print $ fizzBuzz $ read input
