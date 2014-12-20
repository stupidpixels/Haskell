{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 13 : Decode a run-length encoded list.(Direct Solution)
-}
--------------------------------------------------------------------------------

module DirectDecode where

-- New data type to handle wanted list output.
data ListItem a = Single a | Multiple Int a
    deriving (Show)

-- New encoding function.
encode' :: Eq a => [a] -> [(Int,a)]
encode' = foldr encode []
    where
      encode x [] = [(1,x)]
      encode x (y@(a,b):ys)
        | x == b    = (1+a, x) : ys
        | otherwise = (1,   x) : y : ys


encodeDirect :: Eq a => [a] -> [ListItem a]

-- Uses the encode function and separates the list into singles and multiples.
encodeDirect = map direct . encode'
    where
        direct (1, x) = Single x
        direct (n, x) = Multiple n x