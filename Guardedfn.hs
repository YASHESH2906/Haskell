-- Safetail implementation using three different methods

-- (a) Conditional Expression
safetailA :: [a] -> [a]
safetailA xs = if null xs then [] else tail xs

-- (b) Guarded Equations
safetailB :: [a] -> [a]
safetailB xs | null xs   = []
             | otherwise = tail xs

-- (c) Pattern Matching
safetailC :: [a] -> [a]
safetailC []     = []
safetailC (_:xs) = xs

-- Main function to test the implementations
main :: IO ()
main = do
    print "Enter the integers in the from of List:"
    input <- getLine
    let testList = read input :: [Int]
    let emptyList = [] :: [Int]

    putStrLn "Using safetailA:"
    print (safetailA testList)
    print (safetailA emptyList)
    putStrLn "Using safetailB:"
    print (safetailB testList)
    print (safetailB emptyList)
    putStrLn "Using safetailC:"
    print (safetailC testList)
    print (safetailC emptyList)
