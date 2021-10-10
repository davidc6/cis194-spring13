{--
 - Exercise 3
 -
 - Calculate the sum of all digits.
 - Numbers that are not single digit need to be split
 - e.g. [12,13] becomes [1,2,1,3]
--}
main :: IO()
main =
  putStrLn (show (sumDigits [16,7,12,5]))

{--
 - Base case is x is less or equals to 0 then fn returns empty list
 - Else case is x modulo 10 (remainder) cons recursive call of x divided by 10
--}
digitsReverse :: Int -> [Int]
digitsReverse x
  | x <= 0 = []
  | otherwise = x `mod` 10 : digitsReverse (x `div` 10)

{--
 - Reverse the list
--}
toDigits :: Int -> [Int]
toDigits x = reverse (digitsReverse x)

{--
 - Pattern match empty list and return 0
 - Pattern match if any elements left in a list
--}
sumDigits :: [Int] -> Int
sumDigits [] = 0
sumDigits (x:xs) = sum (toDigits x) + sumDigits xs
