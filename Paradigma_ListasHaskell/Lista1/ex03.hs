{--- Crie uma função que recebe um número e retorne seu antecessor se
for maior que zero.
---}

antecessor :: Float -> Float
antecessor x | x > 0 = -x
             | otherwise = 0