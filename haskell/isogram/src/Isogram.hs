module Isogram (isIsogram) where

import Data.Char

isogram' :: String -> String -> Bool
isogram' _ [] = True
isogram' set (x':xs) =
  let x = toLower x'
  in if elem x set && x /= ' ' && x /= '-'
     then False
     else isogram' (x:set) xs

isIsogram :: String -> Bool
isIsogram = isogram' []
