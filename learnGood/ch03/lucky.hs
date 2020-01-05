lucky :: Int -> String
lucky 7 = "Lucky Number, 777"
lucky x = "Sorry, you're not lucky"




sayMe :: Int -> String
sayMe 1 = "one"
sayMe 2 = "two"
sayMe 3 = "three"
sayMe 4 = "four"
sayMe 5 = "five"
sayMe 6 = "six"
sayMe x = "anything else?"


factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n -1)
