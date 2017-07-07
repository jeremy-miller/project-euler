module Main where

import qualified Data.Map as Map (Map, fromList, lookup)
import qualified Problem1 (solve)
import qualified Problem2 (solve)
import qualified Problem3 (solve)
import qualified Problem4 (solve)
import qualified Problem5 (solve)
import qualified Problem6 (solve)
import qualified Problem7 (solve)
import qualified Problem8 (solve)
import System.Environment (getArgs)

solutionSet :: Map.Map Int Integer
solutionSet = Map.fromList
  [
    (1, Problem1.solve)
  , (2, Problem2.solve)
  , (3, Problem3.solve)
  , (4, Problem4.solve)
  , (5, Problem5.solve)
  , (6, Problem6.solve)
  , (7, Problem7.solve)
  , (8, Problem8.solve)
  ]

main :: IO ()
main = do
  args <- getArgs
  let problemNumber = head args
  case Map.lookup (read problemNumber :: Int) solutionSet of
    Just solutionFunction -> print solutionFunction
    Nothing -> putStrLn $ "No solution exists for problem " ++ problemNumber
