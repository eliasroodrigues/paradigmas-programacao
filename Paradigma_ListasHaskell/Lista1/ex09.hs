{--- Dados três comprimentos de lados, verifique se podem formar um
triângulo. Observações: O comprimento de um lado do triângulo é
sempre menor do que a soma dos outros dois. Retorne também o tipo
do triângulo:
	Equilátero > Todos lados iguais
	Isósceles > Dois lados iguais
	Escaleno > Todos os lados diferentes
---}

isTriangulo :: Float -> Float -> Float -> IO ()
isTriangulo x y z | x<(y+z) && y<(x+z) && z<(x+y) = tipoTriangulo x y z
                  | otherwise = print('n')
tipoTriangulo x y z | x == y && y == z = print('e')
                    | x == y || x == z || y == z = print('i')
                    | x /= y && y /= z = print('s')
                    | otherwise = print('n')