module Menu where

{- Trabalho 2 Paradigma de Programação
   Paradigma Funcional - Haskell

   Aluno: Elias E. S. Rodrigues, 0015920
-}

import Funcoes

escreve :: String -> IO ()
escreve texto = appendFile "saida.txt" texto

menu :: IO ()
menu = do
    putStrLn "\n--- MENU ---"
    putStrLn "1 O produto X foi comprado?"
    putStrLn "2 Qtd comprada de um produto"
    putStrLn "3 Valor total comprado de um produto"
    putStrLn "4 Comprado na data X"
    putStrLn "5 Total comprado em uma loja"
    putStrLn "0 Encerrar"
    op <- getLine;
    case op of
        "1" -> do { nome <- getLine;
                    isProdutoControle nome;
                    menu
        }
        "2" -> do { nome <- getLine;
                    qtdProdutoControle nome;
                    menu
        }
        "3" -> do { nome <- getLine;
                    totalProdutoControle nome;
                    menu
        }
        "4" -> do { date <- getLine;
                    compradoDataControle date;
                    menu
        }
        "5" -> do { nome <- getLine;
                    totalLojaControle nome;
                    menu
        }
        "0" -> return()
        _ -> do { putStrLn "Opcao invalida.";
                  menu
        }


{- Controle -}
isProdutoControle :: String -> IO ()
isProdutoControle nome | isProduto nome == True = escreve (nome ++ " - Sim\n")
                       | otherwise = escreve (nome ++ " - Não\n")

qtdProdutoControle :: String -> IO ()
qtdProdutoControle nome = escreve (nome ++ " - " ++ show (qtdProduto nome) ++ "\n")

totalProdutoControle :: String -> IO ()
totalProdutoControle nome = escreve (nome ++ " - " ++ show (totalProduto nome) ++ "\n")

compradoDataControle :: String -> IO ()
compradoDataControle date = escreve (date ++ " - " ++ show (compradoData date) ++ "\n")

totalLojaControle :: String -> IO ()
totalLojaControle nome = escreve (nome ++ " - " ++ show (totalLoja nome) ++ "\n")