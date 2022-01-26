{--- Dado um valor monetário em Reais, faça um programa que devolve uma
tupla-3 contendo o valor em Real, e sua conversão para Euro (1Real =
0.448Euro) e Dólar (1R =0.547USD), como no exemplo abaixo:
	> valorRealConvertido 500.8
	((500.8,"Real"),(224.3584,"Euro"),(273.9376,"Dolar"))
---}

valorRealConvertido :: Float -> ((Float, String), (Float, String), (Float, String))
valorRealConvertido x = ((x, "Real"), (x*0.16, "Euro"), (x*0.18, "Dolar"))