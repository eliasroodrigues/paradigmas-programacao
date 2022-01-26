module Gastos where

{- Trabalho 2 Paradigma de Programação
   Paradigma Funcional - Haskell

   Aluno: Elias E. S. Rodrigues, 0015920
-}

type Compra = (String, String, String, Int, String, Float, Float)
type Gasto = [Compra]

listaCompra :: Gasto
listaCompra = [("01/01/2022", "Cimento", "Loja do Ze", 2, "saco", 12.0, 24.0),
               ("01/01/2022", "Cal", "Loja do Ze", 1, "saco", 10.0, 10.0),
               ("02/01/2022", "Piso", "Loja do Jorge", 50, "unidade", 2.5, 125.0),
               ("02/01/2022", "Telha", "Loja do Jorge", 100, "unidade", 1.5, 150.0),
               ("03/01/2022", "Cimento", "Loja do Ze", 14, "saco", 12.0, 168.0),
               ("03/01/2022", "Cimento", "Loja do Ze", 4, "saco", 12.0, 48.0),
               ("03/01/2022", "Piso", "Loja do Jorge", 150, "saco", 2.5, 375.0)]