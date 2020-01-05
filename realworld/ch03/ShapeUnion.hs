-- file: ch03/ShapeUnion.hs

type Vecotr = (Double, Double)

data Shape = Circle Vecotr Double
           | Poly [Vector]
           deriving (Show)
