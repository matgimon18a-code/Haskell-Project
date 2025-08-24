filtrarLista :: (Num a, Ord a) => [a] -> a -> a -> [a]
filtrarLista [] _ _ = []
filtrarLista (x:xs) minimo maximo
    | x >= minimo && x <= maximo = x : filtrarLista xs minimo maximo
    | otherwise = filtrarLista xs minimo maximo



ordenarLista :: [Float] -> [Float]
ordenarLista [] = []
ordenarLista [x] = [x]
ordenarLista (x:xs) 
    | [] <- resto = [x]
    | (y:ys) <- resto, x >= y = x : y : ys
    | (y:ys) <- resto = y : ordenarLista (x : ys)
    where resto = ordenarLista xs

main :: IO ()
main = do
   print (filtrarLista [1, 25, 5, -4] 0 5)
   print (filtrarLista [10, 3, 7, 15, 2] 3 10)
   print (filtrarLista [-5, -2, 0, 3, 8] (-3) 2)
   print (filtrarLista [] 0 5 :: [Int])
   
   print (ordenarLista [1, 25, 5, -4])
   print (ordenarLista [10.5, 3.2, 7.8, 15.1, 2.9])
   print (ordenarLista [5.0])
   print (ordenarLista [])