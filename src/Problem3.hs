module Problem3
  ( solve
  ) where

findLargestPrimeFactor :: Integer -> Integer -> Integer -> Integer
findLargestPrimeFactor number currentDivisor largestDivisor
  | number == 1 = largestDivisor
  | number `mod` currentDivisor == 0 = findLargestPrimeFactor (number `div` currentDivisor) currentDivisor currentDivisor
  | currentDivisor == 2 = findLargestPrimeFactor number (currentDivisor + 1) largestDivisor
  | otherwise = findLargestPrimeFactor number (currentDivisor + 2) largestDivisor  -- no need to checking even numbers after 2

-- | What is the largest prime factor of the number 600851475143?
--
-- Example:
-- >>> solve
-- 6857
solve :: Integer
solve = findLargestPrimeFactor 600851475143 2 1
