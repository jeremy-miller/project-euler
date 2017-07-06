module Problem4
  ( solve
  ) where

solve :: Integer
solve = maximum [number | x <- [100 .. 999], y <- [x .. 999], let number = x * y, show number == reverse (show number)]
