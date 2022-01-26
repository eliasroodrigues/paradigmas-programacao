{--- Crie uma função recursiva que recebe uma lista de inteiros e
retorna o maior elemento.
---}

andar_lista :: (a -> b -> a) -> a -> [b] -> a
andar_lista f z [] = z
andar_lista f z (x:xs) = andar_lista f (f z x) xs

andar_lista' :: (a -> a -> a) -> [a] -> a
andar_lista' f (x:xs) = andar_lista f x xs

maior :: Ord a => a -> a -> a
maior x y | x >= y = x
          | otherwise = y

maior_elemento :: Ord a => [a] -> a
maior_elemento xs = andar_lista' maior xs