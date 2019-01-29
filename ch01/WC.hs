
main :: IO()
main = interact wordCount
    where wordCount input = (show $ foldl (+) 0 $ map length $ words input) ++ "\n"