#!/usr/bin/python
# -*- coding: utf-8 -*-

""" ==================================================
*  Paradigmas de Linguagem - Trabalho 1
*  Prolog
*
*  Aluno: Elias E. S. Rodrigues, 0015920
*  =============================================== """

from pyswip import *

class Consultas:
	def __init__(self):
		self.prolog = Prolog()
		self.prolog.consult("logica.pl")

	def comprado(self, produto: str):
		result = list(self.prolog.query("comprado('"+produto+"')"))
		ans = len(result)

		if ans == 0:
			print("\n[", produto, "] nunca foi comprado.")
		else:
			print("\nO produto [", produto, "] foi comprado.")

	def quantidade_de_produto(self, produto: str):
		result = list(self.prolog.query("qtd_total('"+produto+"',N,T)"))

		total = 0
		for item in result:
			total += item["T"]
		
		print("\nQuantidade comprada de [", produto,"] é [", total, "]")

	def valor_total(self, produto: str):
		result = list(self.prolog.query("valor_total('"+produto+"',T)"))

		total = 0
		for item in result:
			total += item["T"]
		
		print("\nValor total comprado de [", produto,"] é [", total, "]")

	def comprado_em(self, data: str):
		result = list(self.prolog.query("comprado_em('"+data+"',P)"))

		print("\nComprado em [", data, "]")
		for item in result:
			print(item["P"])

	def compra_loja_total(self, loja: str):
		result = list(self.prolog.query("compra_loja_total('"+loja+"',T)"))

		total = 0
		for item in result:
			total += item["T"]
		
		print("\nValor total comprado na loja [", loja,"] é [", total, "]")

	def produto_mais_comprado(self):
		return