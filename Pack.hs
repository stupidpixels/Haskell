{-
    PROJECT   : Ninety-Nine Haskell Problems
    CODE BY   : Frank Gonzalez
    PROBLEM 9 : Pack consecutive duplicates of list elements into sublists.
                If a list contains repeated elements they should be placed
                in separate sublists.
--}

-- Takes the first element of a list and looks for the others same as it.
pack (x:xs) = let (first,rest) = span (== x) xs
    in (x:first) : pack rest

pack [] = []