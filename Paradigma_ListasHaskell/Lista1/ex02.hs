{--- Crie uma função para retornar o valor absoluto.
---}

abs :: Float -> Float
abs x | x > 0 = x
      | x < 0 = -x
      | otherwise = x 