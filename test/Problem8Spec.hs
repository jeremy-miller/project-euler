module Problem8Spec (main, spec) where

import Test.Hspec
import Problem8

-- | `main` defined so this can be run from GHCi independently.
main :: IO ()
main = hspec spec

-- | `spec` defined for test auto-discovery.
spec :: Spec
spec =
  describe "Problem8" $
    it "returns correct solution" $
      solve `shouldBe` 23514624000
