{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 11 : Modified run-length encoding of a list.
-}

module EncodeMod where

import Data.List (group)

-- New data type to handle wanted list output.
data ListItem a = Single a | Multiple Int a
    deriving (Show)

-- List encoding function.
encode :: Eq t => [t] -> [(Int, t)]

-- Takes the head of every sorted group and counts its elements
-- And makes a list of each element and how many times the element is repeated.
encode l = map (\l -> (length l, head l)) (group l)

-- Modified list encoding function,
encodeMod :: Eq a => [a] -> [ListItem a]

-- Uses the encode function and separates the list into singles and multiples.
encodeMod = map modList . encode
    where
        modList (1, x) = Single x
        modList (n, x) = Multiple n x