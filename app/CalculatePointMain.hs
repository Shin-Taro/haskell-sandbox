module CalculatePointMain (main) where

import CalculatePoint (calculate)

main :: IO ()
main = do
  input <- getLine
  print $ calculate $ read input
