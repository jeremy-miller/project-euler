module Problem2
  ( solve
  ) where

{-|
  zipWith pulls out the 'head' of both the 'fibonacci' and 'tail fibonacci' lists (the existing list being build)
  and adds them together.  It then appends the summed value to the end 'fibonacci' list.  This new valus is then used
  in the next iteration of zipWith to calculate the next number in the sequence.
-}
fibonacci :: [Integer]
fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)

-- | By considering the terms in the Fibonacci sequence whose values do not exceed four million,
--   find the sum of the even-valued terms.
--
-- Example:
-- >>> solve
-- 4613732
solve :: Integer
solve = sum [x | x <- takeWhile (<= 4000000) fibonacci, even x]
