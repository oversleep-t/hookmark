{-# LANGUAGE OverloadedStrings #-}

module Data.Hookmark where

import System.IO
import Data.List
-- import Control.Lens
-- import Data.Aeson.Lens

dispatch :: String -> [String] -> IO ()
-- dispatch "-v" = version
-- dispatch "-help" = help
dispatch "add" = add
-- dispatch "rm" = remove
-- dispatch "ls" = ls
-- dispatch "pin" = pin
-- dispatch _ = return ()

add :: [String] -> IO ()
add [title, urlItem] = appendJSON (title ++ ":" ++ urlItem)

appendJSON :: String -> IO ()
appendJSON item = appendFile "hookmark.json" (item ++ ",")