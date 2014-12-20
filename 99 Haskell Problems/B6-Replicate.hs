{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 15 : Replicate each element in a list n times.
-}
--------------------------------------------------------------------------------

module Replicate where

repli :: [a] -> Int -> [a]

-- Uisng concatMap and replicate.
repli l n = concatMap (replicate n) l