import Data.Char

divide :: Int -> Int -> Int
divide x y = y `div` x

repeatN :: Int -> a -> [a]
repeatN 0 x = []
repeatN n x = x : repeatN (n-1) x

suffixes :: String -> [String]
suffixes "" = []
suffixes str = str : suffixes (tail str)

allSquare :: Num a => [a] -> [a]
allSquare [] =  []
allSquare (x : xs) = x * x : allSquare xs

allToUpper :: String -> String
allToUpper [] = []
allToUpper (x : xs) = toUpper x : allToUpper xs

extractDigits :: String -> String
extractDigits [] = []
extractDigits ( chr : restString)
  | isDigit chr = chr : extractDigits restString
  | otherwise = extractDigits restString

