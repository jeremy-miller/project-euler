module Problem3
  ( solve
  ) where

findLargestPrimeFactor :: Integer -> Integer -> Integer -> Integer
findLargestPrimeFactor number currentDivisor largestDivisor
  | number == 1 = largestDivisor
  | number `mod` currentDivisor == 0 = findLargestPrimeFactor (number `div` currentDivisor) currentDivisor currentDivisor
  | otherwise = findLargestPrimeFactor number (currentDivisor + 1) largestDivisor

solve :: Integer
solve = findLargestPrimeFactor 600851475143 2 1
