module Main where

import qualified Data.Map as Map (Map, fromList, lookup)
import qualified Problem1 (solve)
import qualified Problem2 (solve)
import System.Environment (getArgs)

solutionSet :: Map.Map Int Integer
solutionSet = Map.fromList
  [
    (1, Problem1.solve)
  , (2, Problem2.solve)
  ]

main :: IO ()
main = do
  args <- getArgs
  let problemNumber = head args
  case Map.lookup (read problemNumber :: Int) solutionSet of
    Just solutionFunction -> return solutionFunction >>= print
    Nothing -> putStrLn $ "No solution exists for problem " ++ problemNumber
