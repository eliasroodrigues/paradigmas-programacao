{--- Crie uma função recursiva que recebe uma lista de inteiros e
retorna uma lista com o dobro de cada elemento da primeira lista.
---}

dobro :: [Int] -> [Int]
dobro [] = []
dobro (x:[]) = [x*2]
dobro (x:xs) = x*2 : dobro xs

dobro' (x:xs) = [x*2 | x <- [1 .. n]]
                where n = length (x:xs)