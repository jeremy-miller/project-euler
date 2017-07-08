module Problem3Spec (main, spec) where

import Test.Hspec
import Problem3

-- | `main` defined so this can be run from GHCi independently.
main :: IO ()
main = hspec spec

-- | `spec` defined for test auto-discovery.
spec :: Spec
spec =
  describe "Problem3" $
    it "returns correct solution" $
      solve `shouldBe` 6857
