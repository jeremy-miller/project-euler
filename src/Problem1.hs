module Problem1
  ( solve
  ) where

-- | Find the sum of all the multiples of 3 or 5 below 1000.
--
-- Example:
-- >>> solve
-- 233168
solve :: Integer
solve = sum [x | x <- [3 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]
