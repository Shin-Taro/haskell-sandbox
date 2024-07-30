module Pipe
  ( (|>),
  )
where

infixl 1 |>

(|>) :: t1 -> (t1 -> t2) -> t2
(|>) a f = f a
