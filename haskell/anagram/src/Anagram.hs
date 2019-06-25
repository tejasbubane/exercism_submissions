module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor xs = filter anagram
  where
    lowercase = map toLower
    lxs = lowercase xs
    sxs = sort lxs
    anagram str = lowercase str /= lxs && (sort . lowercase $ str) == sxs
