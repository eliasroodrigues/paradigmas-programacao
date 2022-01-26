{--- Crie uma função utilizando variáveis anônimas para definir a função
lógica “or”
---}

or :: Bool -> Bool -> Bool
or True True = True
or True False = True
or False True = True
or False False = False