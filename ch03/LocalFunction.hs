
-- file: ch03/LocalFunction.hs

pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
    where plural 0 = "no" ++ word ++ "s"
          plural 1 = "one " ++ word
          plural n = show n ++ " " ++ word ++ "s"

bar :: (Int, Bool)
bar = let b = 2
          c = True
      in let a = b
         in (a, c)