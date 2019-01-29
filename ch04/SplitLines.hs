



splitLines :: String -> [String]
splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in pre : case suf of
                ('\r':'\n':rest) -> splitLines rest
                ('\r':rest)      -> splitLines rest
                ('\n':rest)      -> splitLines rest
                _                -> []

isLineTerminator :: Char -> Bool
isLineTerminator c = c == '\r' || c == '\n'

-- a string will split when '\r' or '\n' met
mySplitLines :: String -> [String]
mySplitLines [] = []
mySplitLines cs = 
    let (pre, suf) = break (\x -> x == '\r' || x == '\n') cs
    in pre : case suf of
                ('\r':'\n':rest) -> mySplitLines rest
                ('\n':rest)      -> mySplitLines rest
                ('\r':rest)      -> mySplitLines rest
                _                -> []