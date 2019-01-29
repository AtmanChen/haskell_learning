
import System.Environment (getArgs)

interactWith function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)


main = mainWith myFunction
    where mainWith function = do
            args <- getArgs
            case args of
                [input, output] -> interactWith function input output
                _ -> putStrLn "error: exactly two arguments needed"
          -- replace "id" with the name of our function below
          myFunction = fixLines

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


fixLines :: String -> String
fixLines input = unlines (mySplitLines input)