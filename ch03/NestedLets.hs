bar = let x = 1
      in ((let x = "foo" in x), x)


quux a = let x = "foo"
         in x ++ "eek!"