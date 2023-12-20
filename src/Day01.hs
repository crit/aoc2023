module Day01 ( day01, sumCalibrationValues, sumCalibrationValuesWithTextNumbers ) where

import Data.Char ( isNumber )
import Data.List ( isPrefixOf )
import Text.Printf ( printf )

day01 :: IO ()
day01 = do
    input <- readFile "app/input/day-01.txt"
    putStrLn          "  Day 01:"
    putStrLn . printf "  Calibration Values (part 1): %d" $ sumCalibrationValues input
    putStrLn . printf "  Calibration Values (part 2): %d" $ sumCalibrationValuesWithTextNumbers input

-- given some text content, for each line, add the first and last digits together, sum the results of all lines
sumCalibrationValues :: String -> Int
sumCalibrationValues input = sum . map parseInput $ lines input

-- given some text content, for each line, add the first and last digits together after converting text numbers to digits, sum the results of all lines
sumCalibrationValuesWithTextNumbers :: String -> Int
sumCalibrationValuesWithTextNumbers input = sum . fmap (parseInput . parseNumbers) $ lines input

-- given a line of text, find the first and last digit, combine them as a single number
-- "1abc2" => ["1", "2"] => 12
parseInput :: String -> Int
parseInput = read . (\input -> [head input, last input]) . filter isNumber

-- insert text key with digit value
-- "1onetwoabc2four" => "112abc24"
parseNumbers :: String -> String
parseNumbers input =
    foldr (\(old, new) acc -> insert old new acc) input
        [
            ("one", "1"),
            ("two", "2"),
            ("three", "3"),
            ("four", "4"),
            ("five", "5"),
            ("six", "6"),
            ("seven", "7"),
            ("eight", "8"),
            ("nine", "9")
        ]

-- scan source for old value and insert the new value
insert :: String -> String -> String -> String
insert _ _ [] = []
insert _ _ [x] = [x]
insert old new src@(x : y : xs) =
    if old `isPrefixOf` src
        then insert old new (x : new <> xs)
        else x : insert old new (y : xs)
