
-- file: ch03/add.hs
sumList :: (Num a) => [a] -> a
sumList (x:xs) = x + sumList xs
sumList [] = 0