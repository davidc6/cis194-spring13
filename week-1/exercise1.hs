{--
 -- Exercise 1
 --
 -- 1. main()
 -- main() runs the program
 -- since we are printing to the screen, it's a side effect hence IO() type
 -- the main executable should always have IO() type
 --
 -- 2. do notation/syntax
 -- do notation is to tell Haskell that we want to sequence a chain of actions,
 -- it is syntactic sugar but make blocks of code more readable
 -- do syntax allows us to sequence monanic actions
 --
 -- 3. rest
 -- putStr - writes a string to stdout
 -- show - converts args to string
--}
main :: IO()
main = do
  putStrLn (show (toDigits 1234))
  putStrLn (show (toDigits (-10)))
  putStrLn (show (toDigitsRev [1,2,3,4]))

-- -------------
-- Create a list of integers out of integer
-- -------------
-- if 0 then empty list
-- `div` - integer division (e.g. 2 `div` 1) - return value without the remainer
-- i.e. how many times can an integer be divided by
--
-- `mod` - modulus of the two numbers
--
-- ++ - list concat operator, takes two lists and combines them
toDigits :: Integer -> [Integer]
toDigits x
  | x <= 0 = []
  | otherwise = toDigits (x `div` 10) ++ [x `mod` 10]

-- ------------
-- Create an integer out of a list of integers
-- ------------
-- foldl - fold left a list
toDigitsRev :: [Integer] -> Integer
toDigitsRev = foldl (\num d -> 10 * num + d) 0

