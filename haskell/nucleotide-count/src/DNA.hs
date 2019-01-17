module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map, insertWith, fromList)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

type NucleotideCounts = Map Nucleotide Int

makeNucleotide :: Char -> Either String Nucleotide
makeNucleotide 'A' = Right A
makeNucleotide 'C' = Right C
makeNucleotide 'G' = Right G
makeNucleotide 'T' = Right T
makeNucleotide _   = Left "Invalid nucleotide"

countDNA :: Either String NucleotideCounts -> Char -> Either String NucleotideCounts
countDNA e@(Left _) _ = e
countDNA (Right m) x =
  case makeNucleotide x of
    Left e  -> Left e
    Right n -> Right $ insertWith (+) n 1 m

nucleotideCounts :: String -> Either String NucleotideCounts
nucleotideCounts xs = foldl countDNA (Right $ fromList [(A, 0), (C, 0), (G, 0), (T, 0)]) xs
