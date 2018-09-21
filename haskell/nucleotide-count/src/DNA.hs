module DNA (nucleotideCounts) where

import qualified Data.Map.Lazy as Map

dna :: String
dna = "ACGT"

countMap :: Map.Map Char Int
countMap = Map.fromList [(x, 0) | x <- dna]

type NucleotideCount = Either String (Map.Map Char Int)

validate :: Char -> Either String Char
validate x =
  if x `elem` dna
  then Right x
  else Left "Invalid DNA"

countOne :: Char -> NucleotideCount -> NucleotideCount
countOne x acc = do
  x' <- validate x
  acc' <- acc
  return $ Map.insertWith (+) x' 1 acc'

nucleotideCounts :: String -> NucleotideCount
nucleotideCounts = foldr countOne (Right countMap)
