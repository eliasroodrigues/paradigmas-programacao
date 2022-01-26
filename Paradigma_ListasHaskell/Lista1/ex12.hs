{--- Dado um número natural n > 0, n é dito perfeito se a soma de seus
divisores, incluindo o número 1, é igual ao próprio n. O primeiro número
natural perfeito é o número 6, porque 6=1+2+3. Defina uma função
eperfeito(n) que informe se n é, ou não, um número perfeito. Outros
números perfeitos: 28, 496 e 8.128.
---}

divisores :: Int -> [Int]
divisores x = [y | y <- [1 .. x-1], ((mod x y) == 0)]

perfeito :: Int -> Bool
perfeito x | sum (divisores x) == x = True
           | otherwise = False