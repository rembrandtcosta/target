-- Given a number, say if it's in the Fibonacci sequence 

solve :: Int -> Bool
solve x = elem x $ takeWhile (<= x) fib
  where 
    fib = fib' 0
    fib' 0 = 0 : fib' 1
    fib' 1 = 1 : fib' 2
    fib' n = head (fib' (n-1)) + head (fib' (n-2)) : fib' (n+1)

answer True = "This number is in the Fibonacci sequence!"
answer False = "This number is not in the Fibonacci sequence"

main :: IO ()
main = do
  putStrLn "Enter a number: "
  input <- getLine
  let number = read input :: Int
  putStrLn $ answer $ solve number 
