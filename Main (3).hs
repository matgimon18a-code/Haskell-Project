-- Funcion: filtrar lista
-- Proposito: Elimina los elementos de una lista que estan fuera del intervalo dado
-- Entradas:
--   - lista: Lista de números (tipo Num a ⟹ [a])
--   - minimo: Valor mínimo del intervalo (tipo Num a ⟹ a)
--   - maximo: Valor máximo del intervalo (tipo Num a ⟹ a)
-- Salidas: Lista con solo los elementos que están dentro del intervalo [minimo, maximo]
-- Ejemplo: filtrarLista [1, 25, 5, -4] 0 5 = [1, 5]
filtrarLista :: (Num a, Ord a) => [a] -> a -> a -> [a]
filtrarLista [] _ _ = [] -- Caso base: lista vacia
filtrarLista (x:xs) minimo maximo -- Caso recursivo: x es cabeza, xs es cola
    | x >= minimo && x <= maximo = x : filtrarLista xs minimo maximo -- Si x esta en rango, incluirlo
    | otherwise = filtrarLista xs minimo maximo --Si x esta fuera del rango, excluirlo

--Funcion:ordenar lista
--Proposito: Ordena una lista de numeros float en orden descendente(de mayor a menor.
-- Entradas:
--   - lista: Lista de números de tipo Float ([Float])
-- Salidas: Lista ordenada en orden descendente
-- Ejemplo: ordenarLista [1, 25, 5, -4] = [25.0, 5.0, 1.0, -4.0]
ordenarLista :: [Float] -> [Float]
ordenarLista [] = [] -- caso base: lista vacia
ordenarLista [x] = [x] -- caso base: un solo elemento
ordenarLista (x:xs) -- caso recursivo: x es cabeza y xs es cola
    | [] <- resto = [x] -- Si resto esta vacio, solo X
    | (y:ys) <- resto, x >= y = x : y : ys -- Si x>= y, x va primero (orden descendente)
    | (y:ys) <- resto = y : ordenarLista (x : ys) -- si x < y, y va primero, insertar x recursivamente 
    where resto = ordenarLista xs -- primero ordenamos recursivamente 

main :: IO ()
main = do
-- pruebas de ordenar y filtrar lista
   print (filtrarLista [1, 25, 5, -4] 0 5)   -- Esperado: [1,5]
   print (filtrarLista [10, 3, 7, 15, 2] 3 10)  -- Esperado: [10,3,7,2]
   print (filtrarLista [-5, -2, 0, 3, 8] (-3) 2)  -- Esperado: [-2,0]
   print (filtrarLista [] 0 5 :: [Int])  -- Esperado: []
   
   print (ordenarLista [1, 25, 5, -4])               -- esperado [25.0, 5.0, 1.0, -4.0]
   print (ordenarLista [10.5, 3.2, 7.8, 15.1, 2.9])  -- esperado: [ 15.1, 10.5,7.8, 3.2, 2.9]
   print (ordenarLista [5.0])                        -- esperado: [5.0]
   print (ordenarLista [])                           -- esperado [] 
