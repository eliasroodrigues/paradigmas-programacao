{--- Crie uma função que receba uma lista de inteiros com tamanho maior
que três e retorne a soma dos três primeiros elementos.
---}

soma3Primeiros :: [Int] -> Int
soma3Primeiros (x:xs) = aux_soma n (x:xs)
                        where n = 3;
aux_soma :: Int -> [Int] -> Int
aux_soma 0 l = 0
aux_soma _ [] = 0
aux_soma n (x:xs) = x + aux_soma (n-1) xs