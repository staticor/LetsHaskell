

import Data.List (tails)

suffixes :: [a] -> [[a]]
suffixes xs@(_:xs') = xs : suffixes xs'
suffixes [] = []


suffixes2 xs = init (tails xs)
