
-- file: ch03/Nullable.hs

data Maybe a = Just a
                | Nothing
            deriving (Show)

someBool :: Main.Maybe Bool
someBool = Main.Just True

someString :: Main.Maybe String
someString = Main.Just "something"
