module Problem7
  ( solve
  ) where

sieveOfEratosthenes :: [Integer] -> [Integer] -> Integer
sieveOfEratosthenes processedList primesList
  | length primesList >= 10001 = last primesList
  | otherwise = sieveOfEratosthenes filteredList $ primesList ++ [currentPrime]
  where
    currentPrime = head processedList
    filteredList = filter (\x -> x `mod` currentPrime /= 0) processedList

-- | What is the 10,001st prime number?
--
-- Example:
-- >>> solve
-- 104743
solve :: Integer
solve = sieveOfEratosthenes [3,5 ..] [2]
