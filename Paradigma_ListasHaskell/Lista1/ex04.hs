{--- Crie três versões de uma mesma função que ao receber três valores x
y z, retorne 10 se x for 7 retornar 20 se y for 8 e retornar 30 se
z for 9. Em uma versão utilize padrões de função, outra deve ter
variáveis anônimas e a última, comando de guarda ou condicional.
---}

tres_valores_v1 :: Int -> Int -> Int -> Int
tres_valores_v1 x y z | x == 7 = 10
                      | y == 8 = 20
                      | z == 9 = 30
                      | otherwise = 0
