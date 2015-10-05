{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 10 : Run-length encoding of a list.
-}
--------------------------------------------------------------------------------

module Encode where

-- We have to use the group function to separate the elemets of the list/
import Data.List (group)

-- List encoding function.
encode :: Eq t => [t] -> [(Int, t)]

-- Takes the head of every sorted group and counts its elements
-- And makes a list of each element and how many times the element is repeated.
encode l = map (\l -> (length l, head l)) (group l)