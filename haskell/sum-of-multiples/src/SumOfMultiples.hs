module SumOfMultiples (sumOfMultiples) where

import Control.Monad (liftM2)
import Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ filter factor range
  where range = [1..(limit-1)]
        factor = (\x -> any ((== 0) . rem x) factors')
        factors' = filter (/= 0) factors
