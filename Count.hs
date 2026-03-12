-- Count the number of elements in a list without using length
count :: [a] -> Int
count [] = 0
count (_:xs) = 1 + count xs
main :: IO ()
main = do
    print(count [1, 2, 3, 4, 5])
