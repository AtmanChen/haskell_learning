


data Fruit = Apple | Orange
            deriving Show


whichFruit :: String -> Fruit
whichFruit f = case f of 
                "apple" -> Apple
                "orange" -> Orange