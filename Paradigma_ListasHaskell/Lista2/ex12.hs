{--- Defina uma função que dada uma lista de inteiros, retorna o número
de elementos de valor superior a um número n qualquer.
	>retornaSup 4 [3,2,5,6]
	2.
---}

retorna_sup :: Int -> [Int] -> Int
retorna_sup n xs = length (filter (> n) xs)