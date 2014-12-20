main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn $ name ++ "! This is a very nice name."

    putStrLn "Where were you born?"
    city <- getLine
    putStrLn $ city ++ "!? Cool, sounds like a great city."
