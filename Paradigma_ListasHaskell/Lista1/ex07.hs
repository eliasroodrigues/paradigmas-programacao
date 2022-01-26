{--- Crie uma função comDesconto :: Float -> Float que, dado o valor de
uma mercadoria, calcule o valor com desconto segundo as regras
abaixo:
-Valor < 50.0, desconto de 0%
-Valor >=50.0 e < 100.0 , desconto de 5%
-Valor >= 100.0 e < 300.0 , desconto de 10%
-Valor >= 300.0, desconto de 15%
---}

comDesconto :: Float -> Float
comDesconto x | x < 50.0 = x
              | x >= 50.0 && x < 100.0 = x-x*0.05
              | x >= 100.0 && x < 300.0 = x-x*0.10
              | x >= 300.0 = x-x*0.15
              | otherwise = 0