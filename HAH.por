programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	//Uma criancinha quer saber qual é a soma
	//de todas as idades que ela já teve.
	//Escreva um programa que leia uma idade
	//qualquer e responda rapidamente a essa
	//pergunta [fórmula para calcular a soma
	//dos N primeiros números inteiros: N
	//(N+1)/2].
	inteiro idade
	inteiro calculo = 0
	funcao vida()
	{
		escreva("quantos anos voce tem? ")
		leia(idade)
		para (inteiro i = idade; i > 0; i --)
		{
			calculo += i
		}
		escreva("a soma de todas as suas idades ate agora e igual a ", calculo, "!")
	}
	funcao inicio()
	{	
		vida()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */