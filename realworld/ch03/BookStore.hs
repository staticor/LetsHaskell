-- file: ch03/BookStore.hs


data BookInfo = Book Int String [String]
                deriving (Show)
--    instance Show BookInfo

data MagzineInfo = Magzine Int String [String]
                   deriving (Show)

-- let myInfo = Book 1234 "Kongzi" ["1929.1.23", "abc. press"]

-- data BookReview = BookReview BookInfo CustomerId String

type CardHolder = String 
type CardNumber = String
type Address = [String]
type Invoice = String
type CustomerId = Int
type CId = Int
type ReviewBody = String
data BetterReview = BookReview BookInfo CustomerId ReviewBody


data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CId
                 deriving (Show)



bookId      (Book id title authors ) = id
bookTitle   (Book id title authors ) = title
bookAuthors (Book id title authors ) = authors

nicerId      (Book id  _ _ ) = id
nicerTitle   (Book _ title _ ) = title
nicerAuthors (Book _ _ authors ) = authors


data Customer = Customer Int String [String] deriving (Show)

customerId :: Customer -> Int
customerId ( Customer id _ _ ) = id

customerName :: Customer -> String
customerName ( Customer _ name _ ) = name

customerAddress :: Customer -> [String]
customerAddress ( Customer _ _ address ) = address

data CustomerBtype = Customerb {
         customerId :: CustomerId
      ,  customerName :: String
      ,  customerAddress :: Address
   } deriving (Show)


-- customer1 = Customer 271828 "J.R Hacker" ["1","2", "3"]
-- customerName customer1
