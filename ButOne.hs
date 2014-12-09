{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 2 : Find the last but one element of a list.(One Based Notation)
-}

butOne :: [a] -> a
butOne = (!! 1) . reverse