{--- Faça uma função que recebe duas listas e faça a interseção delas.
Obs: a interseção não tem repetição de elementos.
---}

intersecao :: Eq a => [a] -> [a] -> [a]
intersecao [] = const []
intersecao xs = filter (`elem` xs)