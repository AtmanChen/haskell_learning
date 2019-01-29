import Data.Char (digitToInt)

asInt_fold :: String -> Int
asInt_fold xs 
  | head xs == '-'  = -foldl helper 0 (tail xs)
  | otherwise       = foldl helper 0 xs
  where helper = (\acc x -> acc*10 + digitToInt x)

asInt_fold' :: String -> Int
asInt_fold' xs = foldl (\acc x -> acc*10 + digitToInt x) 0 xs
