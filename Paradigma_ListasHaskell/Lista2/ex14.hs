{--- Defina a função tabuada :: Int -> [(Int, Int, Int)] que dado um
inteiro n produz uma lista da tabuada dos n números inteiros.
---}

tabuada :: Int -> [(Int, Int, Int)]
tabuada n = [ (n, x, n*x) | x <- [1 .. 10] ] 