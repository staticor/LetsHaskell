-- file: ch04/upperCase.hs
--

import Data.Char (toUpper)

upper :: String -> String 
upper (x:xs) = toUpper x : upper xs
upper [] = []

fact :: Integer  -> Integer 
fact 1 = 1
fact n = n * (fact n-1)
