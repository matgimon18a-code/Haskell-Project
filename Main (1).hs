factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

expAprox :: Double -> Int -> Double
expAprox x n = sum [ (x^^k) / fromIntegral (factorial (toInteger k)) | k <- [0..(n-1)] ]

cosAprox :: Double -> Int -> Double
cosAprox x n = sum [ ((-1)^^k) * (x^^(2*k)) / fromIntegral (factorial (toInteger (2*k))) | k <- [0..(n-1)] ]

logAprox :: Double -> Int -> Double
logAprox x n = sum [ ((-1)^^(k+1)) * (x^^k) / fromIntegral k | k <- [1..(n-1)] ]

percentError :: Double -> Double -> Double
percentError approx real = abs ((real - approx) / real) * 100

process :: String -> Double -> Int -> IO ()
process "exponencial" x n = do
    let approx = expAprox x n
        real   = exp x
        error  = percentError approx real
    putStrLn ("Exponencial(" ++ show x ++ ") con " ++ show n ++ " terminos")
    putStrLn ("Aprox: " ++ show approx)
    putStrLn ("Real: " ++ show real)
    putStrLn ("Error: " ++ show error ++ "%")

process "coseno" x n = do
    let approx = cosAprox x n
        real   = cos x
        error  = percentError approx real
    putStrLn ("Coseno(" ++ show x ++ ") con " ++ show n ++ " terminos")
    putStrLn ("Aprox: " ++ show approx)
    putStrLn ("Real: " ++ show real)
    putStrLn ("Error: " ++ show error ++ "%")

process "logaritmo" x n = do
    let approx = logAprox x n
        real   = log (1 + x)
        error  = percentError approx real
    putStrLn ("Logaritmo(1+" ++ show x ++ ") con " ++ show n ++ " terminos")
    putStrLn ("Aprox: " ++ show approx)
    putStrLn ("Real: " ++ show real)
    putStrLn ("Error: " ++ show error ++ "%")

process _ _ _ = putStrLn "Funcion no reconocida. Usa: exponencial, coseno o logaritmo."

main :: IO ()
main = do
    putStrLn "Mini Calculadora de Series (escribe: funcion valor N)"
    putStrLn "Funciones disponibles: exponencial, coseno, logaritmo"
    putStrLn "Ejemplo: coseno 1.5 6"
    input <- getLine
    let ws = words input
    if length ws /= 3
        then putStrLn "Formato invalido. Ejemplo: coseno 1.5 6"
        else do
            let func = ws !! 0
                x    = read (ws !! 1) :: Double
                n    = read (ws !! 2) :: Int
            process func x n
    main  
