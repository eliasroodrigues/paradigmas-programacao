{--- Dados dois números naturais, x e y, ambos maiores que zero, defina
uma função mdc(x,y) que dê como resultado o máximo divisor comum entre x
e y.
---}

mdc :: Int -> Int -> Int
mdc x y = mdc' (abs x) (abs y)
          where
          	mdc' x 0 = x
          	mdc' x y = mdc' y (x `rem` y)
