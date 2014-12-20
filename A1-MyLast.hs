{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 1 : Find the last element of a list.
-}

module MyLast where

myLast :: [a] -> a
myLast = head . reverse