-- define function
add10 :: Int -> Int
add10 x = x + 10

-- function that executes codes in this file
main :: IO ()
main = do
  print (add10 5)
