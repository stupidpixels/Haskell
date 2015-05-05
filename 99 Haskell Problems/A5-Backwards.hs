
module Backwards where

backwards :: [a] -> [a]
backwards list = backed list []
    where
        backed [] reversed = reversed
        backed (x:xs) reversed = backed xs (x:reversed)