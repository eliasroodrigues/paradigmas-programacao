#!/usr/bin/python
# -*- coding: utf-8 -*-

""" ==================================================
*  Paradigmas de Linguagem - Trabalho 1
*  Prolog
*
*  Aluno: Elias E. S. Rodrigues, 0015920
*  =============================================== """

import os, sys
from consultas_interface import ConsultasInterface

menu = {}
menu['1'] = "O produto X foi comprado."
menu['2'] = "Quantidade comprada de um produto X."
menu['3'] = "Valor total de um produto."
menu['4'] = "O que foi comprado na data X."
menu['5'] = "Total de compras em uma loja."
menu['6'] = "Produto mais comprado."
menu['0'] = "Sair."

def programa():
	while True:
		options = menu.keys()

		print("/* ======================")
		for entry in options:
			print(entry, menu[entry])
		print("====================== */")

		selection = input("Selecione a opção: ")

		if selection == '1':
			entry = input("Nome do produto: ")
			prolog.comprado(entry)

		elif selection == '2':
			entry = input("Nome do produto: ")
			prolog.quantidade_de_produto(entry)

		elif selection == '3':
			entry = input("Nome do produto: ")
			prolog.valor_total(entry)

		elif selection == '4':
			entry = input("Data: ")
			prolog.comprado_em(entry)

		elif selection == '5':
			entry = input("Nome da loja: ")
			prolog.compra_loja_total(entry)

		elif selection == '6':
			prolog.produto_mais_comprado()

		elif selection == '0':
			print("Saindo...")
			break

		else: print('Opção inválida.')

		print("\n")

if __name__ == '__main__':
	prolog = ConsultasInterface()

	programa()