module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | silence xs = "Fine. Be that way!"
  | forcefulQuestion xs && not (onlyNumbers xs) = "Calm down, I know what I'm doing!"
  | shouting xs && not (onlyNumbers xs) = "Whoa, chill out!"
  | question xs = "Sure."
  | onlyNumbers xs = "Whatever."
  | otherwise = "Whatever."

silence :: String -> Bool
silence = all isSpace

onlyNumbers :: String -> Bool
onlyNumbers xs = (filter isAlpha xs) == []

forcefulQuestion :: String -> Bool
forcefulQuestion xs = shouting xs && question xs

shouting :: String -> Bool
shouting xs = xs == (map toUpper xs)

question :: String -> Bool
question xs = '?' == last (strip xs)

strip :: String -> String
strip = reverse . dropWhile isSpace . reverse . dropWhile isSpace
