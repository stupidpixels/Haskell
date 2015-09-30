{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 7 : Flatten a nested list.
-}
--------------------------------------------------------------------------------

module Flatter where

-- New data type to handle nested lists in Haskell.
data NestedList a = Elem a | List [NestedList a]

-- Function that receives a Nested list and outputs a Flattened list.
flatten :: NestedList a -> [a]

-- Single element case.
flatten (Elem x) = [x]

-- Recursive call to concatinate each element to a single list.
flatten (List x) = concatMap flatten x