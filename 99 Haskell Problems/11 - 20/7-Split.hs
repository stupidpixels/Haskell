{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 17 : Split a list into two parts;
                 the length of the first part is given.
-}
--------------------------------------------------------------------------------

split :: [a] -> Int -> ([a], [a])

-- Empty list case. The list will eventually be empty so this is needed.
split [] _ = ([],[])

-- Splits the list by recursively n times.
split list@(x:xs) n | n > 0     = (x : xss, xsss)
                    | otherwise = ([], list)
    where (xss,xsss) = split xs (n-1)
