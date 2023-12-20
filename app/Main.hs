module Main ( main ) where

import Day01 ( day01 )
import Day02 ( day02 )
import System.Environment ( getArgs )

-- $ stack run       => Title with listing of days completed.
-- $ stack run 01    => Title with output of Day01
main :: IO ()
main = do
    putStrLn ""
    putStrLn "AoC 2023"

    args <- getArgs
    case args of
        "01": _ -> day01
        "02": _ -> day02
        
        _noInput -> putStrLn "  Days Completed: 01"
