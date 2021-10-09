{--
 - Exercise 2
 -
 - Double every other number starting from the right
 - This particular solution only deals with the two lists below
--}
main :: IO()
main = do
  putStrLn (show (doubleEveryOther [8,7,6,5]))
  putStrLn (show (doubleEveryOther [1,2,3]))

doubleEveryOther :: [Int] -> [Int]
doubleEveryOther [] = []
doubleEveryOther (x:[]) = x * 2 : [] 
doubleEveryOther (x:y:[]) = x * 2 : y : [] 
doubleEveryOther (x:y:z:[]) = x : y * 2 : z : [] 
doubleEveryOther (x:y:xs) = x * 2 : y : doubleEveryOther xs

