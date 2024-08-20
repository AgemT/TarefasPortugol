programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	//Faça um programa para uma loja de tintas. O programa deverá pedir o
	//tamanho em metros quadrados da área a ser pintada. Considere que a
	//cobertura da tinta é de 1 litro para cada 3 metros quadrados e que a tinta
	//é vendida em latas de 18 litros, que custam R$ 480,00. Informe ao usuário
	//a quantidade de latas de tinta a serem compradas e o preço total.
	inteiro metrosQuadrados
	inteiro litros
	inteiro latas
	inteiro preco
	funcao inicio()
	{	
		escreva("Quantos metros quadrados voce ira pintar? ")
		leia(metrosQuadrados)
		litros = (metrosQuadrados/3)+(metrosQuadrados%3)
		latas = litros/18
		se (litros%18 > 0)
		{
			latas += 1
		}
		preco = latas*480
		se (latas > 1)
		{
			escreva("Voce ira precisar comprar ", latas, " latas, e pagar ", preco, " reais")
		}
		senao 
		{
			escreva("Voce ira precisar comprar uma lata e pagar 480 reais")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 929; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
