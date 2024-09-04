programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	inteiro velocidade
	const inteiro precoKm = 7
	const inteiro maxKm = 80
	inteiro multa
	funcao calc()
	{
		escreva("A quantos Km/h seu carro esta? ")
		leia(velocidade)
		se (velocidade>maxKm)
		{
			multa = (velocidade-maxKm)*precoKm
			escreva("Parabens! voce recebeu uma multa de ", multa, " reais!")
		}
		senao
		{
			escreva("Parabens! voce obedeceu o limite de velocidade!")
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
 * @POSICAO-CURSOR = 208; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */