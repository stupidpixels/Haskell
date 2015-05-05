-- This function merges two lists.
merge :: [a] -> [a] -> [a]

-- If the second list is empty return the first.
merge f []         = f

-- If the first list is empty return the second.
merge [] s         = s

-- Take the head of each list and merge them. Then recursively apply the
--function to the rest of the list.
merge (x:xs)(s:sx) = x : s : merge xs sx