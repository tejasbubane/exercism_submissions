module SumOfMultiples (sumOfMultiples) where

import Control.Monad (liftM2)
import Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum . nub . map fst . filter divisible $ liftM2 (,) range factors'
  where range = [1..(limit-1)]
        divisible = ((== 0) . uncurry mod)
        factors' = filter (/= 0) factors
