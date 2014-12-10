{-
    CODE BY : Frank Gonzalez
    PROBLEM : Fibonacci numbers generator from lists.
    SUMMARY : This program gets a list of indexes and outputs the coresponding
              Fibonacci number.

-}

-- This function calculates the Fibonacci sequence.
fib :: Int -> Int
fib n
    | n < 2 = n
    | n >= 2 = fib(n-1) + fib(n-2)

-- This function gives you a list of Fibonacci numbers.
fibs :: [Int] -> [Int]
fibs = map(fib)