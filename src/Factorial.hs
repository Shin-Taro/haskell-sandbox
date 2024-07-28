module Factorial
  ( factorial,
  )
where

factorial :: Int -> Int
-- パターンマッチとガードを使った再帰
factorial 0 = 1
factorial n
  | n < 0 = error "negative argument"
  | otherwise = n * factorial (n - 1)

-- 別解
-- factorial 0 = 1
-- factorial n
--   | n < 0 = error "negative argument"
--   | otherwise = product [1 .. n]

-- Maybeモナドを使った実装
-- fact :: (Num t, Ord t) => t -> Maybe t
-- fact 0 = Just 1
-- fact n
--   | n < 0 = Nothing
--   | otherwise = (n *) <$> fact (n - 1)

-- test :: Num a => Maybe a -> a
-- test (Just x) = x
-- test Nothing = 0

-- hoge :: Integer
-- hoge = test $ fact 5
