module Acronym (abbreviate) where

import Data.Char (isLower, isUpper, isAlpha, toUpper)

abbreviate :: String -> String
abbreviate xs = map (toUpper . snd) $ filter abbLetters $ zip (' ':xs) xs
  where abbLetters = (||) <$> firstLetter <*> camelCase
        camelCase (x, y) = isLower x && isUpper y
        firstLetter (x, y) = (x == ' ' || x == '-') && isAlpha y
