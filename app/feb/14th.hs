calcArea :: Double -> Double
calcArea r = r * r * pi

-- IO is one of types in Haskell.
-- Values typed as IO might cause unintended side effects.
main :: IO ()
main = do
  print (calcArea 2)
