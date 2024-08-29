programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real temperatura
	funcao calc()
	{
		escreva("qual a temperatura atual (em graus)? ")
		leia(temperatura)
		se (temperatura > 0)
		{
			escreva("a temperatura eh positiva")
		}
		senao se (temperatura < 0)
		{
			escreva("a temperatura eh negativa")
		}
		senao
		{
			escreva("a temperatura esta neutra")
		}
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
 * @POSICAO-CURSOR = 159; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */