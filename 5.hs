-- Reverse string

myReverse :: String -> String
myReverse []     = []
myReverse (h:hs) = (myReverse hs) ++ [h]

main :: IO ()
main = do
  input <- getLine
  putStrLn $ myReverse input
