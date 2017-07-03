module Main where

import qualified Data.Map as Map (fromList, lookup)
import qualified Problem1 (solve)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let problemNumber = head args
      solutionSet = Map.fromList [(1, Problem1.solve)]
  case Map.lookup (read problemNumber :: Int) solutionSet of
    Just solutionFunction -> return solutionFunction >>= print
    Nothing -> putStrLn $ "No solution exists for problem " ++ problemNumber
