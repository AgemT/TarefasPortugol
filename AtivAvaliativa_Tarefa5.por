programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real nA
	real nB
	real maior
	
	funcao calc()
	{
		escreva("escreva um numero: ")
		leia(nA)
		escreva("escreva outro numero: ")
		leia(nB)
		maior = m.maior_numero(nA, nB)
		escreva ("entre esses dois, o maior numero eh ", maior)
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
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */