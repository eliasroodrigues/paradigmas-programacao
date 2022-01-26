{--- Considere o algoritmo a seguir que gera uma seqüência de números
naturais não nulos, a partir de um número natural n > 0. Se n for par,
divida-o por 2. Se n for ímpar, multiplique-o por 3 e some 1. Repita este
processo com o novo valor de n, até que ele seja igual a 1, se possível.
Por exemplo, para n = 22, a seqüência é: 22, 11, 34, 17, 52, 26, 13, 40,
20, 10, 5, 16, 8, 4, 2 e 1. Para cada n, define-se o tamanho do ciclo de
n como a quantidade de números da seqüência gerada, incluindo o número 1.
No exemplo acima, o tamanho do ciclo para n = 22 é 16. Defina uma função
tamciclo(n) que dê como resultado o tamanho do ciclo de n.
---}

-- n par / 2
-- n impart * 3 + 1

tamCiclo :: Int -> Int
tamCiclo x | x == 1 = 1
           | even x == True = 1 + tamCiclo (x `div` 2)
           | odd x == True = 1 + tamCiclo (x*3+1)
           | otherwise = tamCiclo x