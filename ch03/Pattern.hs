
badExample :: (Num a) => [a] -> a
badExample (x:xs) = x + badExample xs
badExample _ = 0