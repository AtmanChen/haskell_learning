-- file: ch03/BookStore.hs

data BookInfo = Book Int String [String]
            deriving (Show)
bookID :: BookInfo -> Int
bookID (Book id _ _) = id


data Customer = Customer {
    customerID :: Int,
    customerName :: String,
    customerAddress :: String
} deriving (Show)


customer2 :: Customer
customer2 = Customer {
    customerID = 271828,
    customerAddress = "USA",
    customerName = "J.K.Rolin"
}