import Data.Char (digitToInt)


asInt :: String -> Int
loop :: Int -> String -> Int

asInt xs = loop 0 xs

loop acc [] = acc
loop acc (x:xs) = let acc' = acc * 10 + digitToInt x
                  in loop acc' xs


square :: [Float] -> [Float]
square []     = []
square (x:xs) = x*x : square xs


myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = f x : myMap f xs
myMap _ []     = []

oddList :: [Int] -> [Int]
oddList (x:xs) | odd x     = x : oddList xs
               | otherwise = oddList xs
oddList []                 = []

mySum :: (Num a) => [a] -> a
mySum xs = helper 0 xs
  where helper acc (x:xs) = helper (acc + x) xs
        helper acc []     = acc

myFactorial :: Int -> Int
myFactorial n = factorial n 1 
  where factorial 1 c = c
        factorial k c = factorial (k-1) (c*k)


factorial' :: Int -> Int
factorial' n = helper 1 n
  where helper acc 1 = acc
        helper acc n = helper (n*acc) (n-1)
