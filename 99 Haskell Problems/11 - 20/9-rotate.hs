{-
    PROJECT    : Ninety-Nine Haskell Problems
    CODE BY    : Frank Gonzalez
    PROBLEM 19 : Rotate a list N places to the left.
-}
--------------------------------------------------------------------------------

rotate :: [a] -> Int -> [a]

rotate [] _ = []
rotate l  0 = l
rotate l  s
  | s > 0 = rotate (tail l ++ [head l]) (s - 1)
  | otherwise = rotate (last l : init l) (s + 1)