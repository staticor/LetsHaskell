--file, better definition  ch03/Bookstore.hs 

type CustomerId = Int
type Address = [String]
data Customer = Customer {
      customerId      :: CustomerId
    , customerName    :: String
    , customerAddress :: Address
   } deriving (Show)


a = Customer 1234 "Mike" ["abc house", "def building"]

-- Record syntax 

customer2 = Customer {
      customerId = 271828
      , customerAddress = ["ABC house", "abc building"]
      , customerName = "Jane"
  }





-- Result in GHCI
--
--ghci-> a
-- Customer {customerId = 1234, customerName = "Mike", customerAddress = ["abc house","def building"]}
-- ghci-> customerId a
-- 1234
-- ghci-> customerName a
-- "Mike"
