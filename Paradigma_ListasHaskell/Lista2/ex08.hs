{--- Crie uma função recursiva que insere um elemento na posição “x” de
uma lista.
---}

insere_lista :: x -> Int -> [x] -> [x]
insere_lista x _ [] = [x]
insere_lista x n (a:as) | n <= 0 = x:a:as
                        | otherwise = a : insere_lista x (n-1) as