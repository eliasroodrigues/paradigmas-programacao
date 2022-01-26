module Funcoes where

{- Trabalho 2 Paradigma de Programação
   Paradigma Funcional - Haskell

   Aluno: Elias E. S. Rodrigues, 0015920
-}

import Gastos

{- ===============================================================
-  O produto X foi comprado?
================================================================== -}
isProduto :: String -> Bool
isProduto nome = nome `elem` (map (\(_,n,_,_,_,_,_) -> n) listaCompra)


{- ===============================================================
-  Qual foi a quantidade total comprada de um produto X?
================================================================== -}
listaProdutoQtd :: [(String, Int)]
listaProdutoQtd = (map (\(_,nome,_,qtd,_,_,_) -> (nome, qtd)) listaCompra)

qtdProduto :: String -> Int
qtdProduto nome = sum [ x | (_,x) <- (filter ((== nome) . fst) listaProdutoQtd) ]


{- ===============================================================
-  Qual foi o valor total comprada de um produto X?
================================================================== -}
listaProdutoTotal :: [(String, Float)]
listaProdutoTotal = (map (\(_,nome,_,_,_,_,total) -> (nome, total)) listaCompra)

totalProduto :: String -> Float
totalProduto nome = sum [ x | (_,x) <- (filter ((== nome) . fst) listaProdutoTotal) ]


{- ===============================================================
-  O que foi comprado na data X?
================================================================== -}
listaDataProduto :: [(String, String)]
listaDataProduto = (map (\(date,nome,_,_,_,_,_) -> (date, nome)) listaCompra)

compradoData :: String -> [String]
compradoData date = [ x | (_,x) <- filter ((== date) . fst) listaDataProduto ]


{- ===============================================================
-  Qual o total de compras em uma loja X?
================================================================== -}
listaLojaTotal :: [(String, Float)]
listaLojaTotal = (map (\(_,_,loja,_,_,_,total) -> (loja, total)) listaCompra)

totalLoja :: String -> Float
totalLoja loja = sum [ x | (_,x) <- (filter ((== loja) . fst) listaLojaTotal) ]


{- ===============================================================
-  Qual o produto mais comprado?
================================================================== -}
listaNomeProduto :: [String]
listaNomeProduto = map (\(_,nome,_,_,_,_,_) -> nome) listaCompra