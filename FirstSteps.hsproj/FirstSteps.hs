inc :: Num a => a -> a     -- type signature
inc x = x + 1         -- function equation

exclaim :: String -> String
exclaim sentence = sentence ++ "!"

average :: Fractional a => a -> a -> a
average a b = (a + b) / 2

--square :: Int -> Int
square x = x * x

sqaure_1 = square 1
square' = sqaure_1

showResult :: Int -> String
showResult x = "The result is " ++ show x

--showAreaOfCircle :: a -> b
showAreaOfCircle x = "The area of a circle with radius " ++ show x ++ "cm is about " ++ show (pi * x * x) ++ " cm^2"

signum' :: (Ord a, Num a) => a -> Int
signum' x 
         | x < 0 = -1
         | x == 0 = 0
         | otherwise = 1
         

type Point = (Int, Int)
--origin :: Point
--origin = (0, 0)

moveRight :: Point -> Int -> Point
moveRight (x, y) distance = (x + distance, y)

moveUp :: Point -> Int -> Point
moveUp (x, y) distance = (x, y + distance)

type Colour = String
type ColourPoint = (Int, Int, Colour)
origin :: Colour -> ColourPoint
origin colour = (0, 0, colour)

move :: ColourPoint -> Int -> Int -> ColourPoint
move (x, y, colour) xDistance yDistance = ( x + xDistance, y + yDistance, colour)

distance :: ColourPoint -> ColourPoint -> Float
distance (x1, y1, colour1) (x2, y2, colour2)
  = sqrt (fromIntegral (dx * dx + dy * dy))
  where
    dx = x2 - x1
    dy = y2 - y1
    