module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  let takeMultiple acc num =
        if any (\x -> num `mod` x == 0) factors
        then acc + num
        else acc
  in foldl takeMultiple 0 [1..(limit - 1)]
