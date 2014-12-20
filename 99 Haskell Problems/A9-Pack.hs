{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 9 : Pack consecutive duplicates of list elements into sublists.
                If a list contains repeated elements they should be placed
                in separate sublists.
-}
--------------------------------------------------------------------------------

module Pack where

-- Separates duplicate elemets in a list.
pack :: Eq a => [a] -> [[a]]

-- Recursively takes the head of the list and checks if the rest is equal.
-- Then appends it, and that is appended to the list of lists.
pack (x:xs) = let (first,rest) = span (== x) xs
    in (x:first) : pack rest

-- Empty list case. All lists will eventually be empty so this is needed.
pack [] = []