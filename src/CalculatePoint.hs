module CalculatePoint (calculate) where

-- 3万点返し計算
-- 30000を基準としてプラスマイナスを計算
-- 1000点毎に1ポイントとして計算
-- 600点以上は切り上げる

divThousands :: Int -> Int
divThousands score = div score 1000

modThousands :: Int -> Int
modThousands score = mod score 1000

diffFromBase :: Int -> Int
diffFromBase score = score - 30000

revalueRemainder :: Int -> Int -> Int
revalueRemainder remainder score
  | div remainder 100 > 5 = divThousands score + 1
  | otherwise = divThousands score

calculate :: Int -> Int
calculate score = revalueRemainder (modThousands $ diffFromBase score) $ diffFromBase score

-- 手続き的に書いた場合
-- calculate score =
--   let base = 30000
--       diff = score - base
--       point = diff `div` 1000
--       remainder = (diff `mod` 1000) * 10
--    in if remainder > 5 then point + 1 else point

-- おまけ
-- bonusByRanking :: Int -> Either String Int
-- bonusByRanking 1 = Right 30
-- bonusByRanking 2 = Right 10
-- bonusByRanking 3 = Right (-10)
-- bonusByRanking 4 = Right (-30)
-- bonusByRanking _ = Left "Invalid position"

-- throwIfLeft :: Either String a -> a
-- throwIfLeft (Right x) = x
-- throwIfLeft (Left x) = error x

-- calculatePoint :: Int -> Int -> Int
-- calculatePoint position score
--   | position < 1 || position > 4 = error "Invalid position"
--   | otherwise =
--       let bonus = throwIfLeft $ bonusByRanking position
--           calculated = calculate score
--        in calculated + bonus
