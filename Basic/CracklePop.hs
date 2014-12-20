{-
    Code by : Julio Franco Gonzalez (Frank Gonzalez)
    ----------------------------------------------------
    DESCRIPTION:
    This program checks for numbers that are divisible
    by 3, 5 or both. Then outputs "Crackle" if divisible
    by 3, "Pop" if by 5 and "CracklePop" if by both.

-}

cracklePop n = if null num then show n else num where

    num = concat [label | (x, label) <- pop, 0 == rem n x]
    pop = [(3, "Crackle"), (5, "Pop")]

main = mapM_ (putStrLn . cracklePop) [1..100]
