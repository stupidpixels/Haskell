{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 12 : Decode a run-length encoded list.
-}

module Decode where

-- New data type to handle wanted list output.
data ListItem a = Single a | Multiple Int a
    deriving (Show)

-- Decoding function that takes a ListItem type argument.
decode :: [ListItem b] -> [b]
decode = concatMap modList
    where
--
        modList (Single n) = [n]
        modList (Multiple x n) = replicate x n