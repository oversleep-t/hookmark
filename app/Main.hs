module Main where

import Lib
import System.Environment
import System.IO
import Data.List
import Data.Hookmark

main :: IO ()
main = do
    (command:argList) <- getArgs
    dispatch command argList
