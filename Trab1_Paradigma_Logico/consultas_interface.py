#!/usr/bin/python
# -*- coding: utf-8 -*-

""" ==================================================
*  Paradigmas de Linguagem - Trabalho 1
*  Prolog
*
*  Aluno: Elias E. S. Rodrigues, 0015920
*  =============================================== """

from consultas import Consultas

class ConsultasInterface:
	def __init__(self):
		self.__consultas = Consultas()

	def comprado(self, produto: str):
		return self.__consultas.comprado(produto)

	def quantidade_de_produto(self, produto: str):
		return self.__consultas.quantidade_de_produto(produto)

	def valor_total(self, produto: str):
		return self.__consultas.valor_total(produto)

	def comprado_em(self, data: str):
		return self.__consultas.comprado_em(data)

	def compra_loja_total(self, loja: str):
		return self.__consultas.compra_loja_total(loja)

	def produto_mais_comprado(self):
		return self.__consultas.produto_mais_comprado()