--file: ch04/ myMap.hs


myMapp :: (a->b) - [a] -> [b]
myMap f (x:xs) = f x : myMapp f xs
myMap f [] = []
myMap _ [] = []
