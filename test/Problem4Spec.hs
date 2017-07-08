module Problem4Spec (main, spec) where

import Test.Hspec
import Problem4

-- | `main` defined so this can be run from GHCi independently.
main :: IO ()
main = hspec spec

-- | `spec` defined for test auto-discovery.
spec :: Spec
spec =
  describe "Problem4" $
    it "returns correct solution" $
      solve `shouldBe` 906609
