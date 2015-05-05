module HelloWorld where

hello_worlds 0 = return()
hello_worlds n = do
    putStrLn "Hello World"
    hello_worlds (n-1)

main = do hello_worlds 10