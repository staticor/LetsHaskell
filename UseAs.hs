
firstletter :: String -> String 
firstletter "" = "Empty"
firstletter all@(x:xs) = "The first letter " ++ all ++ " is " ++ [x] 


