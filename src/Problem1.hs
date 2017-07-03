module Problem1
  ( solve
  ) where

solve :: Integer
solve = sum [x | x <- [3 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]
