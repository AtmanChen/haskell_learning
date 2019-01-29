double :: [Integer] -> [Integer]
double [] = []
double [x] = [x]
double (x:(y:zs)) = (2*x:y:(double zs)) 

charToInt :: Char -> Integer
charToInt c = read [c] :: Integer

sumNumber :: [Integer] -> Integer
sumNumber [] = 0
sumNumber (x:xs) = (foldl (+) 0 ints) + (sumNumber xs)
		where xChars = show x
		      ints = map (charToInt) xChars
calculateResult :: Integer -> Bool
calculateResult i = i `mod` 10 == 0	

creditCardNumberValid :: [Integer] -> Bool
creditCardNumberValid xs = calculateResult $ sumNumber $ double xs 
