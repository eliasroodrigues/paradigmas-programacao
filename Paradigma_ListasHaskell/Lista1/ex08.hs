{--- Faça uma função recursiva para calcular a potência de dois. Por
exemplo, potDois 3 significa 2^3.
---}

potDois :: Float -> Float
potDois x | x == 0 = 1
          | otherwise = 2 * (potDois (x-1))