module Problem2
  ( solve
  ) where

fibonacci :: [Integer]
fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)

solve :: Integer
solve = sum [x | x <- takeWhile (<= 4000000) fibonacci, even x]
