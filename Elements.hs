{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 4 : Find the number of elements of a list.
-}

elements :: [a] -> Int
elements []   = error "EMPTY LIST"
elements list = accum list 0
    where
        accum [] n     = n
        accum (_:xs) n = accum xs (n+1)