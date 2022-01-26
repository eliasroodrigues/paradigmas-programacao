{--- Crie uma função utilizando variáveis anônimas para definir a função
lógica “and”
---}

and :: Bool -> Bool -> Bool
and True True = True
and True False = False
and False True = False
and False False = True