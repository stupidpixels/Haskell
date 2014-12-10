{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 8 : Eliminate consecutive duplicates of list elements.
-}

-- We need the GROUP function in Data.List to join all the duplicates together.
import Data.List(group)

compress :: Eq a => [a] -> [a]

-- After grouping all the duplicates in the list, take the head of each group.
compress = map head . group