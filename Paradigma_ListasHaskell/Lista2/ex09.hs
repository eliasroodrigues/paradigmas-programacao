{--- Crie uma função recursiva que insere um elemento na última posição
de uma lista caso ele não exista.
---}

pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence n (x:xs) | x == n = True
                  | x /= n = pertence (n) xs
                  | otherwise = False

insere_ultima :: Int -> [Int] -> [Int]
insere_ultima x [] = [x]
insere_ultima x (a:as) | pertence x (a:as) == True = a:as
                       | pertence x (a:as) == False = a : insere_ultima x as
                       | otherwise = a:as