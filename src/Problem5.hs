module Problem5
  ( solve
  ) where

smallestMultiple :: Integer -> Integer -> Integer
smallestMultiple number divisor
  | divisor == 1 = number
  | number `mod` divisor == 0 = smallestMultiple number $ divisor - 1
  | otherwise = smallestMultiple (number + 20) 19  -- add 20 so we know it's at least divisible by 20

solve :: Integer
solve = smallestMultiple 20 19
