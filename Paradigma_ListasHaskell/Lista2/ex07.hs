{--- Defina a função and_list :: [Bool] -> Bool que retorna a conjunção
da lista. Por exemplo, andList [e1; e2;...;en] = e1&&e2&&...&&en
---}

andList :: [Bool] -> Bool
andList x = conjuncao True x

conjuncao bool [] = bool
conjuncao bool (x:xs) = (&&) x (conjuncao bool xs)