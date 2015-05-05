{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 4 : Find the number of elements of a list.
-}
--------------------------------------------------------------------------------

module Elements where

elements :: [a] -> Int
elements []   = Nothing
elements list = accum list 0
    where
        accum [] n     = n
        accum (_:xs) n = accum xs (n+1)