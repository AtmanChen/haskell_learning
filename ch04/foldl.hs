
foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step zero (x:xs) = foldl' step (step zero x) xs
foldl' _ zero []        = zero

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' step zero (x:xs) = foldr' step (step x zero) xs 
foldr' _ zero []        = zero

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldl' step [] xs
  where step zero x = zero ++ [f x]

myMapr :: (a -> b) -> [a] -> [b]
myMapr f xs = foldr' step [] xs
  where step x xs = xs ++ [f x]

identity :: [a] -> [a]
identity xs = foldr' (:) [] xs

append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f xs = foldr' step [] xs
  where step x zero = if f x then zero ++ [x] else zero


