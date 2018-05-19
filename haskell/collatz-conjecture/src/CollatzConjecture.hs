module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | otherwise = Just $ collatzRec n 0

collatzRec :: Integer -> Integer -> Integer
collatzRec n acc
  | n == 1 = acc
  | even n = collatzRec (n `div` 2) (acc + 1)
  | odd n = collatzRec (3 * n + 1) (acc + 1)
