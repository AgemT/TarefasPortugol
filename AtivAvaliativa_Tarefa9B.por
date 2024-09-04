programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	inclua biblioteca Calendario --> c
	inteiro ano
	funcao calc()
	{
		escreva("Escreva um ano: ")
		leia (ano) //Se for informado um ano negativo ou 0 o ano atual deve ser considerado.
		se (ano<=0)
		{
			ano = c.ano_atual()
		}
		se (ano%4==0 e ano%100==0 e ano%400==0)
		{
			escreva(ano ," é ano bissexto (tem 366 dias).")
		}
		senao
		{
			escreva(ano ," não é um ano bissexto (tem 365 dias).")
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
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */