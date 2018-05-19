module Pangram (isPangram) where

import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram text = ['a'..'z'] == (sort . filter isAlpha . nub . map toLower $ text)
