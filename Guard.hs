-- Implement a safetail function in Haskell that behaves in the same way as tail,
-- except that safetail maps the empty list to the empty list, whereas tail gives an error in this case.
-- Define safetail using: (a) a conditional expression; (b) guarded equations; (c) pattern matching.

-- (a) Using a conditional expression
safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs

-- (b) Using guarded equations
safetail2 :: [a] -> [a]
safetail2 xs
    | null xs   = []
    | otherwise = tail xs

-- (c) Using pattern matching
safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 (_:xs) = xs

main :: IO ()
main = do
    print(safetail1 [1, 2, 3, 4, 5]) -- Output: [2, 3, 4, 5]
    print(safetail1 []) -- Output: []
    print(safetail2 [1, 2, 3, 4, 5]) -- Output: [2, 3, 4, 5]
    print(safetail2 []) -- Output: []
    print(safetail3 [1, 2, 3, 4, 5]) -- Output: [2, 3, 4, 5]
    print(safetail3 []) -- Output: []
    
