{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 5 : Reverse a list.
-}
--------------------------------------------------------------------------------

module Backwards where

backwards :: [a] -> [a]
backwards list = backed list []
    where
        backed [] reversed = reversed
        backed (x:xs) reversed = backed xs (x:reversed)