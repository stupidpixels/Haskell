{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 18 : Extract a slice from a list.
-}
--------------------------------------------------------------------------------

slice :: [a] -> Int -> Int -> [a]

slice list a b | a > 0 = take (b-a+1) $ drop (a-1) list
