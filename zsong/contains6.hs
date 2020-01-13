contains6 :: [String]
contains6 = filter (elem '6') (map show [1..100])



-- check number r, is 3 or 5's multipler


fifteen :: [String]
fifteen = map show (filter ( \x -> x `mod` 3 == 0 && x `mod` 5 == 0) [1..1100])

