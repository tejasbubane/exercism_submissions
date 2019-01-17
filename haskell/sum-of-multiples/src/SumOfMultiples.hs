module SumOfMultiples (sumOfMultiples) where

import Control.Monad (liftM2)
import Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum . nub . map fst . filter ((== 0) . uncurry mod) $ liftM2 (,) range factors
  where range = [1..(limit-1)]
