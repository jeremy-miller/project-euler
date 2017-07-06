module Problem7
  ( solve
  ) where

-- | Upper bound calculated using n * log(n) (see https://primes.utm.edu/howmany.html)
-- | If n = 10,1001, upper bound = 10,001 * log(10,001) = 92,113
upperBound :: Integer
upperBound = 1000000

sieveOfEratosthenes :: [Integer] -> [Integer] -> Integer
sieveOfEratosthenes processedList primesList
  | currentPrime ^ 2 > upperBound = (primesList ++ processedList) !! 10001
  | otherwise = sieveOfEratosthenes filteredList $ primesList ++ [currentPrime]
  where currentPrime = head processedList
        filteredList = filter (\x -> x `mod` currentPrime /= 0) processedList

solve :: Integer
solve = sieveOfEratosthenes [3, 5 .. upperBound] [2]
