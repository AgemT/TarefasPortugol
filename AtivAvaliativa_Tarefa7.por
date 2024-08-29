programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real nA
	real nB
	real nC
	real nD
	real maiorAB
	real maiorAC
	real maiorN
	real menorN
	real medioN
	
	funcao calc()
	{
		escreva("escreva um numero: ")
		leia(nA)
		escreva("escreva outro numero: ")
		leia(nB)
		escreva("mais um numero: ")
		leia(nC)
		maiorAB = m.maior_numero(nA, nB)
		maiorAC = m.maior_numero(nA, nC)
		se (maiorAC > maiorAB)
		{
			maiorN = nC
			menorN = m.menor_numero(nA, nB)
			medioN = m.maior_numero(nA, nB)
		}
		senao se (maiorAC < maiorAB)
		{
			maiorN = nB
			menorN = m.menor_numero(nA, nC)
			medioN = m.maior_numero(nA, nC)
		}
		senao 
		{
			maiorN = nA
			menorN = m.menor_numero(nB, nC)
			medioN = m.maior_numero(nB, nC)
		}
		escreva(maiorN, " ", medioN, " ", menorN)
		
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
 * @POSICAO-CURSOR = 789; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */