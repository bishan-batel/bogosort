module Main where

import System.IO
import Data.List

ask :: () -> IO Bool
ask = do putStrLn "Do you want to continue?"
    return (isSubsequenceOf "y" readLn)


main :: IO ()
main = do
  putStrLn "Start"
