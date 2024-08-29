programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real nA
	real nB
	real nC
	real nD
	real maiorAB
	real maiorCD
	real maiorMaior
	
	funcao calc()
	{
		escreva("escreva um numero: ")
		leia(nA)
		escreva("escreva outro numero: ")
		leia(nB)
		escreva("mais um numero: ")
		leia(nC)
		escreva("o ultimo, eu prometo: ")
		leia(nD)
		maiorAB = m.maior_numero(nA, nB)
		maiorCD = m.maior_numero(nC, nD)
		maiorMaior = m.maior_numero(maiorAB, maiorCD)
		escreva("O maior numero destes eh ", maiorMaior)
		
	}
     funcao inicio()
	{
		calc()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */