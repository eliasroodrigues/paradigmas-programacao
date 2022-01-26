{--- Crie uma função recursiva para verificar se um determinado elemento
pertence a uma lista.
---}

pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence n (x:xs) | x == n = True
                  | x /= n = pertence (n) xs
                  | otherwise = False