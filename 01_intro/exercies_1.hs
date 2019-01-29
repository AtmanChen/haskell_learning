toDigits :: Integer -> [Integer]
toDigits i
  | i < 0 = []
  | otherwise = map (\c -> read [c] :: Integer) (show i)

toDigitsRev :: Integer -> [Integer]
toDigitsRev i = reverse $ toDigits i

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x:(y:zs)) = (x:2*y:doubleEveryOther zs)

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs) = (foldl (+) 0 ints) + (sumDigits xs)
  where ints = map (\c -> read [c] :: Integer) (show x)
 
validate :: Integer -> Bool
validate number = result `mod` 10 == 0
  where result = sumDigits $ doubleEveryOther $ toDigitsRev number 
