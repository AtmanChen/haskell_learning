
-- file: ShapeUnion.hs
type Vector = (Double, Double)
type Radius = Double
data Shape = Circle Vector Radius
            | Poly [Vector]