{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 3 : Find the K'th element of a list. (One Based)
-}

kTh :: [a] -> Int -> a
kTh [] n   = error "EMPTY LIST"
kTh list i = list !! (i-1)