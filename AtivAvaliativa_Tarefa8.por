programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real ladoA
	real ladoB
	real ladoC
	logico triangulo
	cadeia tipo
	funcao calc()
	{
		escreva("escreva um numero: ")
		leia(ladoA)
		escreva("mais um numero: ")
		leia(ladoB)
		escreva("o ultimo numero: ")
		leia(ladoC)
		triangulo = ladoA+ladoB>ladoC
		se (triangulo==verdadeiro)
		{
			se (ladoA==ladoB e ladoB==ladoC)
			{
				tipo = "equiltatero"
			}
			senao se(ladoA==ladoB ou ladoB==ladoC ou ladoC==ladoA)
			{
				tipo = "isoceles"
			}
			senao
			{
				tipo = "escaleno"
			}
			escreva("Seu triangulo existe! e seu tipo eh: ", tipo)
		}
		senao 
		{
			escreva("seu triangulo nao existe...")
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
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */