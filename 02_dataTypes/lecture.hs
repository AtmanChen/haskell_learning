data Thing = Shoe | Ship | SealingMax | Cabbage | King
  deriving Show

shoe :: Thing
shoe = Shoe

data FailableDouble = Failure | OK Double
  deriving Show


ex01 :: FailableDouble
ex01 = Failure

ex02 :: FailableDouble
ex02 = OK 3.14

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d) = d


data Person = Person String Int Thing
  deriving Show

brent :: Person
brent = Person "Brent" 31 SealingMax

stan :: Person
stan = Person "stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a
