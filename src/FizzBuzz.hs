module FizzBuzz
  ( fizzBuzz,
  )
where

-- 3で割り切れる数に対しては、"Fizz"
-- 5で割り切れる数に対しては、"Buzz"
-- 3でも5でも割り切れる数に対しては"FizzBuzz"
-- それ以外はその数をそのまま返す

fizzBuzz :: Int -> String
-- パターンマッチ(これだと実現できない)
-- fizzBuzz 15 = "FizzBuzz"
-- fizzBuzz 5 = "Buzz"
-- fizzBuzz 3 = "Fizz"
-- fizzBuzz x = show x

-- ガード
fizzBuzz x
  | mod x 15 == 0 = "FizzBuzz"
  | mod x 3 == 0 = "Fizz"
  | mod x 5 == 0 = "Buzz"
  | otherwise = show x

-- if式
-- fizzBuzz x =
--   if mod x 15 == 0
--     then "FizzBuzz"
--     else
--       if mod x 3 == 0
--         then "Fizz"
--         else
--           if mod x 5 == 0
--             then "Buzz"
--             else show x

-- case式
-- fizzBuzz x = case (mod x 3, mod x 5) of
--   (0, 0) -> "FizzBuzz"
--   (0, _) -> "Fizz"
--   (_, 0) -> "Buzz"
--   _ -> show x
