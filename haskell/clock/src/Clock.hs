module Clock (addDelta, fromHourMin, toString) where

import Text.Printf

data Clock = Clock Int Int deriving Eq

fromHourMin :: Int -> Int -> Clock
fromHourMin hours mins = Clock ((hours + minDelta) `mod` 24) (mins `mod` 60)
  where minDelta = mins `div` 60

toString :: Clock -> String
toString (Clock hours mins) = printf "%02d:%02d" hours mins

addDelta :: Int -> Int -> Clock -> Clock
addDelta hours1 mins1 (Clock hours2 mins2) =
  fromHourMin (hours1 + hours2) (mins1 + mins2)
