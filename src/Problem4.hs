module Problem4
  ( solve
  ) where

solve :: Integer
solve = maximum [number | y <- [100 .. 999], z <- [y .. 999], let number = y * z, show number == reverse (show number)]
