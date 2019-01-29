data BookInfo = Book Int String [String]
                deriving (Show)

data MagazinInfo = Magazine Int String [String]
                   deriving (Show)

myInfo :: BookInfo
myInfo = Book 98767832178 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

type CustomerID = Int
type ReviewBody = String
data BookReview = BookReview BookInfo CustomerID ReviewBody
                deriving (Show)

type CardNumber = String
type CardHolder = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                    | CashOnDelivery
                    | Invoice CustomerID
                      deriving (Show)
