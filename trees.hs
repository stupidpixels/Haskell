module Trees where

-- BINARY TREE DEFINITION AS A DATA TYPE.
data Tree a = Empty | Branch a (Tree a) (Tree a)
    deriving (Show, Eq)

-- LEAF DEFINITION.
leaf x = Branch x Empty Empty

-- FUNCTION TO DETERMINE THE SIZE OF A GIVEN TREE.
size :: Num a => Tree t -> a
size Empty = 0
size (Branch _ Empty Empty) = 0
size (Branch _ left  Empty) = 1 + (size left)
size (Branch _ Empty right) = 1 + (size right)
size (Branch _ left  right) = 2 + (size left) + (size right)

-- FUNCTION TO DETERMINE A BINARY TREE'S DEPTH.
depth :: Tree t -> Int
depth Empty = 0
depth (Branch n leafA leafB) = 1 + max (depth leafA) (depth leafB)

-- BREADTH FIRST SEARCH IMPLEMENTATION.
breadth :: Tree t -> [t]
breadth Empty = []
breadth tree  = bfs [tree]
    where
        bfs [] = []
        bfs xs = map value xs ++ bfs (concat (map nodes xs))

        value (Branch a _     _    ) = a

        nodes (Branch _ Empty Empty) = []
        nodes (Branch _ a     Empty) = [a]
        nodes (Branch _ Empty b    ) = [b]
        nodes (Branch _ a     b    ) = [a ,b]

-- BINARY TREE WITH SOME ELEMENTS
strawberry = Branch 1 (Branch 2 (leaf 3)
                                    (leaf 4))
                        (Branch 5 Empty
                                    (Branch 6 (leaf 7)
                                                Empty))

-- OUTPUTING ALL OF THE FUNCTIONS DEFINES ABOVE.
main = do
    putStrLn "\nBINARY TREE."
    print (strawberry)

    putStrLn "\nTHE SIZE OF THE BINARY TREE."
    print (size  strawberry)

    putStrLn "\nTHE DEPTH OF THE BINARY TREE."
    print (depth strawberry)

    putStrLn "\nTHE CONTENTS OF THE TREE."
    print (breadth strawberry)

    putStrLn "\nTHE CONTENTS OF THE TREE FROM BOTTOM UP."
    print (reverse $ breadth strawberry)