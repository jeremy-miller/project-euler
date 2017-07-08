module Problem5Spec (main, spec) where

import Test.Hspec
import Problem5

-- | `main` defined so this can be run from GHCi independently.
main :: IO ()
main = hspec spec

-- | `spec` defined for test auto-discovery.
spec :: Spec
spec =
  describe "Problem5" $
    it "returns correct solution" $
      solve `shouldBe` 232792560
