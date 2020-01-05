

data Fruit = Apple | Orange
            deriving (Show)

apple = "apple"
orange = "orange"

whichFruit :: String -> Fruit
whichFruit f = case f of 
              apple -> Apple
              orange -> Orange


whichFruit2 :: String -> Fruit
whichFruit2 apple = Apple
whichFruit2 orange = Orange
--  Pattern match is redundant


