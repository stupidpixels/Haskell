--Haskell one liner to firter out odd numbers in a list.

module Fodds where

-- This function will filter out any odd numbers on a given list
fOdds :: [Int] -> [Int]
fOdds = filter $ odd
