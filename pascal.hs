-- PASCALS TRIANGLE

fac :: Int -> Int
fac n = product [1..n]

--pascal :: Int -> [Int]
pascal n = map (coef $ n - 1) [0..n-1]
    where
        coef n k = (fac n) `div` ((fac k) * (fac $ n - k))
