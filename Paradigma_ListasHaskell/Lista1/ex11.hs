{--- Crie uma função para calcular a expressão 3 * 5, usando uma
definição recursiva.
---}

expressao :: Int -> Int -> Int
expressao x y | y == 0 = 0
              | y > 0 = x + expressao x (y-1)
              | otherwise = negate (expressao x (negate y))