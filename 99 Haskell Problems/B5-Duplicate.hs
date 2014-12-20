{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 14 : Duplicate the elements in a list.
-}
--------------------------------------------------------------------------------

module Duplicate where

duplicate :: [a] -> [a]

-- Using concatMap and duplicate.
duplicate = concatMap (replicate 2)