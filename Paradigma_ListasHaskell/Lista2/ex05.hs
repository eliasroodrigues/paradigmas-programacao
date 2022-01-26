{--- Crie uma função recursiva chamada zipar, ela recebe duas listas e
retorna uma lista com tuplas dos elementos da mesma posição Ex:
[1,2] [a,b] => [(1,a),(2,b)].
---}

zipar :: [a] -> [b] -> [(a,b)]
zipar as bs = ziparCom pair as bs
              where pair a b = (a, b)

ziparCom :: (a -> b -> c) -> [a] -> [b] -> [c]
ziparCom z (a:as) (b:bs) = z a b : ziparCom z as bs
ziparCom _ _ _ = []