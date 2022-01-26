* ==================================================
*  Paradigmas de Linguagem - Trabalho 1
*  Haskell
*
*  Aluno: Elias E. S. Rodrigues, 0015920
*  =================================================

## Sobre

O trabalha consiste em importar e exibir informações de uma base de dados representam os gastos de um
empreiteiro em uma obra. O programa deve importar um arquivo texto que representa os dados e criar uma base
de dados armazenados em uma lista com todas as compras durante a obra. Um exemplo de tupla é: gasto(‘01-09-
2021’, ‘Cimento Campeão CPII’, ‘Loja do Zé’, 20, saco, 28.00, 560.00) – o primeiro átomo representa a data da
compra, depois é informado o produto, a loja fornecedora, o tipo de unidade do produto e o valor unitário.

### Funções

> - 1. O produto X foi comprado? Por exemplo: compramos(‘tijolo’). -> true
> - 2. Qual foi a quantidade total comprada de um produto X? Por exemplo: quantos(‘tijolo’). -> 7000.
> - 3. Qual foi o valor total comprada de um produto X? Por exemplo: quantos(‘tijolo’). -> 14000.
> - 4. O que foi comprado na data X? Por exemplo: comprado_em(’10-09-2021’).
> - 5. Qual o total de compras em uma loja X? Por exemplo: compra_na_loja(‘Loja do zé’). -> 45000.00
> - 6. Qual o produto mais comprado? Por exemplo: produto_mais_comprado(X). -> ‘cimento’

### Paradigma Funcional

Foi criado um tipo compra e um tipo gastos para armazenar a base de dados de um empreiteiro.

> - type Compra = (String, String, String, Int, String, Float, Float)
> - type Gasto = [Compra]

#### Exemplo

> - lista :: Gasto
> - lista = [("01/01/2022", "Cimento", "Loja do Ze", 2, "saco", 12.0, 24.0)]

### Ferramentas

> - **GHC Haskell**: compilador e ambiente interativo para linguagem funcional haskell.

### Estrutura do projeto

O projeto consiste dos seguintes arquivos:

> - **Main.hs**: arquivo principal de execução do programa.
> - **Menu.hs**: arquivo que possui um menu para facilitar a interação do usuário com o programa.
> - **Funcoes.hs**: arquivo com a base de dados e as funções do programa.

### Execução

Compilar o arquivo Main.hs com o GHC e então executar o programa Main.

> - $ ghc Main.hs
> - $ ./Main