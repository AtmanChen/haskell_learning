add :: (Num a) => a -> a -> a
add a b = a + b

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs 
            then xs
            else myDrop (n - 1) (tail xs)

            