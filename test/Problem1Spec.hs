module Problem1Spec (main, spec) where

import Test.Hspec
import Problem1

-- | `main` defined so this can be run from GHCi independently.
main :: IO ()
main = hspec spec

-- | `spec` defined for test auto-discovery.
spec :: Spec
spec =
  describe "Problem1" $
    it "returns correct solution" $
      solve `shouldBe` 233168
