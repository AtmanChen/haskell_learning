-- file: Exercises/ch03.hs

import Data.List

myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

mySum :: [Float] -> Float
mySum []     = 0
mySum (x:xs) = x + mySum xs

listMean :: [Float] -> Float
listMean [] = 0
listMean xs = let s = sum xs
                  l = length xs
                  floatL = fromIntegral l
                  in s / floatL

palindrome :: [a] -> [a]
palindrome [] = []
palindrome xs = xs ++ reverse xs

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome xs = xs == reverse xs

sortList :: [[a]] -> [[a]]
sortList = sortBy compareByLength
    where compareByLength a b = compare (length a) (length b)

intersperse' :: a -> [[a]] -> [a]
intersperse' s xs = intersperseAcc [] xs
    where intersperseAcc acc [] = acc
          intersperseAcc acc (h:t) = intersperseAcc(acc ++ h ++ [s]) t


-- myIntersperse :: a -> [[a]] -> [a]
-- myIntersperse a xs = foldl (++[a]) xs

myIntersperse :: a -> [[a]] -> [a]
myIntersperse _ [a] = a
myIntersperse a (x:xs) = x ++ [a] ++ (myIntersperse a xs)
myIntersperse _ _ = []