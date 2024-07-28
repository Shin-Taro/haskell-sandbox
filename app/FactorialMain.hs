module Main (main) where

import Factorial (factorial )

main :: IO ()
main = do
  input <- getLine
  print $ factorial $ read input
