module Exercises where

--------------------------------------------------------------------------------

-- This fuction takes any list as an argument and returns its length.
count :: [a] -> Int

-- If the list is empty return 0.
count [] = 0

-- Otherwise keep an accumulator that increases by one each time we pass the
-- tail of the list to the fuction.
count l  = accum l 0
    where
        accum [] n     = n
        accum (_:xs) n = accum xs (n+1)

--------------------------------------------------------------------------------

-- This function takes a list of Int as an argument and returns its mean.
mean :: [Int] -> Int

-- When the list is empty the mean is 0.
mean [] = 0

-- First we sum up all the elements in the list and then divide by the length.
mean l  = div (sum l) (count l)

--------------------------------------------------------------------------------
-- This function turns ant list into a palindrome, by duplicating elements.
newPali :: [a] -> [a]

-- The empty list return an empty list.
newPali [] = []

-- Append the same list to the original, but reversed
newPali l  = l ++ (reverse l)

--------------------------------------------------------------------------------

-- This function takes a list that can be checked for equality and
-- returns a Bool
palindrome :: (Eq a) => [a] -> Bool

-- If the list is empty it returns False.
palindrome []    = False

-- We compare the list against its reverse.
palindrome list  = compare list (reverse list)
-- If the lists are the same return True.
    where compare [list][rev]       =    list == rev
-- Recursively compare the head of the list against its reverse.
          compare (list:xs)(rev:sx) = if list == rev
                                    then compare xs sx
                                    else False

--------------------------------------------------------------------------------

import Data.list     (sortBy)
import Data.Function (on)

groupBy ((==) `on` length) $ sortBy (compare `on` length    )

--------------------------------------------------------------------------------

--import System.Environment (getArgs)

--interactWith function inputFile outputFile = do
--    input <- readFile inputFile
--    writeFile outputFile (function input)

--main = mainWith myFunction
--    where mainWith function = do
--        args <- getArgs
--        case args of
--            [input,output] -> interactWith function input output
--            _ -> putStrLn "error: exactly two arguments needed"
---- replace "id" with the name of our function below
--        myFunction = interactWith