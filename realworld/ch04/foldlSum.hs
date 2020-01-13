foldlSum xs = foldl step 0 xs
    where step acc x = acc + x



niceSum :: [Integer] -> Integer
niceSum xs = foldl (+) 0 xs
