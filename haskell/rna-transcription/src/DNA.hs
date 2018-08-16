module DNA (toRNA) where

convert :: Char -> Maybe Char
convert 'G' = Just 'C'
convert 'C' = Just 'G'
convert 'T' = Just 'A'
convert 'A' = Just 'U'
convert _   = Nothing

toRNA :: String -> Maybe String
toRNA xs = sequence $ map convert xs
