module Factorial
  ( factorial,
  )
where

factorial :: Integer -> Integer

-- パターンマッチとガードを使った再帰
-- factorial 0 = 1
-- factorial n
--   | n < 0 = error "negative argument"
--   | otherwise = n * factorial (n - 1)

-- 別解
factorial n
  | n < 0 = error "negative argument"
  | otherwise = product [1 .. n]
