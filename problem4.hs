-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome :: String -> Bool
isPalindrome n
	| (length n) <= 1 = True
	| (head n) == (last n) = isPalindrome (init $ tail n)
	| otherwise = False

run :: Int
run = maximum (filter (isPalindrome . show) [x * y | x <- [100..999], y <- [100..999]])
