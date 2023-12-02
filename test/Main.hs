module Main ( main ) where

import Day01 ( sumCalibrationValues, sumCalibrationValuesWithTextNumbers )
import Test.Hspec ( hspec, describe, it, shouldBe )

-- $ stack test
main :: IO ()
main = hspec $ do
    
    describe "Day01" $ do
        it "sums calibration values" $ do
            input <- readFile "test/input/day-01-p1.txt"
            sumCalibrationValues input `shouldBe` 142
    
        it "sums calibration values with text numbers" $ do
            input <- readFile "test/input/day-01-p2.txt"
            sumCalibrationValuesWithTextNumbers input `shouldBe` 281
