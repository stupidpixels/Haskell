{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 16 : Drop every N'th element from a list.
-}
--------------------------------------------------------------------------------

module DropEvery where

import Control.Arrow (second)

dropEvery :: Int -> [a] -> [a]

-- Empty list case.
dropEvery n [] = []

-- Splits the list at (n-1) and drops 1 element from the list and calls the
-- function to the second part (recursive) and then appends the results.
dropEvery n xs = uncurry (++) $ second (dropEvery n . drop 1) $ splitAt (n-1) xs