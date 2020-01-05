-- file: ch04/FixLines.hs


fixLines :: String -> String
fixLines input = unlines ( splitLines input )

