{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 6 : Check if palindrome.
-}
--------------------------------------------------------------------------------

module Paliondrome where

palindrome :: (Eq a) => [a] -> Bool
palindrome []   = False

palindrome list = compare list (reverse list)
    where
        compare [list][rev]       =    list == rev
        compare (list:xs)(rev:sx) = if list == rev
                                    then compare xs sx
                                    else False
