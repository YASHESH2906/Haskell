double::Num a => a -> a
double x = x + x

main :: IO ()
main = do
    print (double 5)  -- Output: 10
    print (double 3.14)  -- Output: 6.28
    print (double (-2))  -- Output: -4
    print (double 0)  -- Output: 0
