
a :: Int -> Int -> Double
a k n
    | k == 0    = sqrt (1 / fromIntegral n)
    | otherwise = sqrt (2 / fromIntegral n)

dctK :: [Double] -> Int -> Double
dctK xs k =
    let n = length xs
        coeff = a k n
        terms = [ (xs !! n') * cos (((fromIntegral n' + 0.5) * pi * fromIntegral k) / fromIntegral n)
                | n' <- [0..(n-1)] ]
    in coeff * sum terms

dct :: [Double] -> [Double]
dct xs = [ dctK xs k | k <- [0 .. length xs - 1] ]

main :: IO ()
main = do
    putStrLn "Transformada Discreta del Coseno (DCT)"
    let input = [1,2,3,4,5,6,7,8,9,10]
    putStrLn "Entrada:"
    print input
    putStrLn "Resultado DCT:"
    print (dct input)
