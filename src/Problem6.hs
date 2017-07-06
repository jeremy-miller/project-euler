module Problem6
  ( solve
  ) where

solve :: Integer
solve = squareOfSum - sumOfSquares
  where squareOfSum = sum [1 .. 100] ^ 2
        sumOfSquares = sum [x ^ 2 | x <- [1 .. 100]]
