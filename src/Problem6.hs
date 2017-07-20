module Problem6
  ( solve
  ) where

-- | Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
--
-- Example:
-- >>> solve
-- 25164150
solve :: Integer
solve = squareOfSum - sumOfSquares
  where squareOfSum = sum [1 .. 100] ^ 2
        sumOfSquares = sum [x ^ 2 | x <- [1 .. 100]]
