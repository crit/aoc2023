module Day02 ( day02 ) where

day02 :: IO ()
day02 = do
  input <- readFile "app/input/day-02.txt"
  putStrLn "  Day 02:"
  putStrLn . printf "  ?? (part 1): %s" $ something input

something :: String -> String
something input = input

