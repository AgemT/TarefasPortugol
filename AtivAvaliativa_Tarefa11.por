programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	const real minimo = 7.0
	const real maximo = 10.0
	real notaA
	real notaB
	real media
	funcao calc()
	{
		escreva("Qual a primeira nota (0-10) do aluno? ")
		leia(notaA)
		escreva("E a segunda? ")
		leia(notaB)
		media = (notaA+notaB)/2
		se (media==maximo)
		{
			escreva("O aluno passou com distincao")
		}
		senao se(media>=minimo)
		{
			escreva("O aluno esta aprovado")
		}
		senao
		{
			escreva("O aluno esta reprovado")
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
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */