* ==================================================
*  Paradigmas de Linguagem - Trabalho 1
*  Prolog
*
*  Aluno: Elias E. S. Rodrigues, 0015920
*  =================================================

# Sobre ->

O trabalho consiste em usar os paradigmas imperativo ou orientado a objetos junto com o
paradigma lógico. O primeiro podendo ser usado para criar interfaces, manipular aqrquivos
e fornecer uma base de dados clara ao usuário. E o segundo sendo usado para buscar informações
em uma base de dados que é representada de forma simbólica.

O trabalho consiste em importar e exibir informações de uma base dados que representa os gastos
de uma empreteira em uma obra.

# Paradigma Lógico ->

Foi usado para criar a base de dados e fazer as consultas. Foi utilizado o Prolog para isso.

	Forma dos fatos:
	compra([01,'01-10-2021','cimento','loja do ze', 10, 'saco', 28, 280]).
	ID	Data	Produto	Loja	Quantiadade	Tipo	Valor_Unitário	Valor_Total

	Exemplo de regra:
	comprado(X) :- compra([_,_,X,_,_,_,_,_]).

# Paradigma Orientado a Objetos ->

Foi usado para facilitar a interação do usuário com a base de dados, deixando o programa mais
intuitivo. Também foi usado para fazer cálculos com dados obtidos do Prolog.

# Ferramenta ->

PySwip: PySwip é uma ponte entre o Python e SWI-Prolog. (https://pypi.org/project/pyswip/)

# Estrutura do projeto ->

A pasta do projeto possui os seguintes arquivos:
	__main__.py: programa principal que possui o menu para chamar as consultas.
	consultas.py: arquivo que usa do PySwip para conectar o Python com o Prolog.
	consultas_interface.py: interface do arquivo consultas.py.
	logica.pl: arquivo que contém o banco de dados com fatos e regras sobre os gastos da empreteira.

# Execução:

Para executar o programa é necessário ter python, pyswip e swi-prolog instalados.
Execute o arquivo prog.sh.