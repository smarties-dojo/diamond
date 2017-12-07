-- file Spec.hs
import Test.Hspec
import Test.QuickCheck
import Diamond

main :: IO ()
main = hspec $ do
  describe "generateDiamond" $ do
    it "returns the correct diamond when given A" $ do
        generateDiamond 'A' `shouldBe` ["A"]

    it "returns the correct diamond when given B" $ do
        generateDiamond 'B' `shouldBe` [" A ", "B B", " A "]

    it "returns the correct diamond when given E" $ do
        generateDiamond 'E' `shouldBe` ["    A    ","   B B   ","  C   C  "," D     D ","E       E"," D     D ","  C   C  ","   B B   ","    A    "]