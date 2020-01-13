

foldl :: (a -> b -> a) -> a -> [b] -> a
fold step zero (x:xs) = foldl step (step zero x) xs
fold _ zero [] = zero



foldr :: (a->b->b) -> b -> [a] -> b

foldr step zero (x:xs) = step x (foldr step zero xs)
foldr _ zero []        = zero 


