-- Q6a] Generate a list of common multiples of 3 and 5 up to 100
commonMulti:: [Int]
commonMulti = [x | x <- [1..100], x `mod` 3 == 0 && x `mod` 5 == 0]


--Multiple of 2 and 3 and the common multiple of 2 and 3
multi23:: [Int]
multi2:: [Int]
multi3:: [Int]
multi2 = [x | x <- [1..20], x `mod` 2 == 0 && x `mod` 3 /= 0]
multi3 = [x | x <- [1..30], x `mod` 3 == 0 && x `mod` 2 /= 0]
multi23 = [x | x <- [1..30], x `mod` 2 == 0 && x `mod` 3 == 0]
-- Main function

main :: IO ()
main = do
    putStrLn "Common multiples of 3 and 5 up to 100:"
    print commonMulti
    putStrLn "Multiples of 2 only (Not of 3):"
    print multi2
    putStrLn "Multiples of 3 only (Not of 2):"
    print multi3
    putStrLn "Common multiples of 2 and 3:"
    print multi23
