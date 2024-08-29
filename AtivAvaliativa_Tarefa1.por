programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	logico boolean
	real realA
	real realB
	logico logicoA
	logico logicoB
	caracter questao
	
	funcao telaPerguntas()
	{
		escreva("Escolha a questao pela letra \na. 2*4 == 24/3 \nb. (15%4) < (19%6) \nc. nao(2<5) != (8 == 8) \nd. verdadeiro ou falso \ne. 2*2 == Matematica.potencia(2,2) \nf. verdadeiro e ((7/2) > 3.5) \ng. (Mat.arredondar(2.8,0) == 3) e (Mat.raiz(9) == 3) \n")
		leia(questao)
		escolha(questao)
		{
			caso 'a':
				realA = 2*4
				realB = 24/3
				boolean = (realA == realB)
				pare
			caso 'b':
				realA = (15%4)
				realB = (19%16)
				boolean = (realA<realB)
				pare
			caso 'c':
				logicoA = nao(2<5)
				logicoB = 8==8
				boolean = (logicoA != logicoB)
				pare
			caso 'd':
				logicoA = verdadeiro
				logicoB = falso
				boolean = (logicoA ou logicoB)
				pare
			caso 'e':
				realA = 2*2
				realB = m.potencia(2,2)
				boolean = (realA == realB)
				pare
			caso 'f':
				logicoA = verdadeiro
				logicoB = ((7/2)>3.5)
				boolean = (logicoA e logicoB)
				pare
			caso 'g':
				logicoA = ((m.arredondar(2.8, 0)) == 3)
				logicoB = (m.raiz(9, 2) == 3)
				boolean = (logicoA e logicoB)
				pare
		}
		escreva("essa funcao tem valor ", boolean, "!")
		u.aguarde(2500)
		limpa()
		telaPerguntas()
	}
     funcao inicio()
	{
		telaPerguntas()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 835; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */