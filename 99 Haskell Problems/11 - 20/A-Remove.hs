{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 20 : Remove the K'th element from a list.
-}
--------------------------------------------------------------------------------
removeAt :: Int -> [a] -> (Maybe a, [a])

removeAt _ []     = (Nothing,[])
removeAt 1 (x:xs) = (Just x, xs)
removeAt k (x:xs) = let (a, r) = removeAt (k-1) xs in (a, x:r)