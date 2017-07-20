module Problem4
  ( solve
  ) where

-- | Find the largest palindrome made from the product of two 3-digit numbers.
--
-- Example
-- >>> solve
-- 906609
solve :: Integer
solve = maximum [number | x <- [100 .. 999], y <- [x .. 999], let number = x * y, show number == reverse (show number)]
