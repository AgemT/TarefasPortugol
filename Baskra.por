programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
	     real a
	     real b
	     real c
	     real delta
	     real raiz_delta
	     real bNegativo
	     real x1
	     real x2
	     real boa
	     real bom
		escreva("Vamos fazer um calculo com baskra!\nQual o coeficiente A?\n")
		leia(a)
		escreva("e o coeficiente B?\n")
		leia(b)
		escreva("por fim, o coeficiente c\n")
		leia(c)
		delta = b*b+(-4*a*c)
		escreva ("delta e igual a: " +delta)
		se (delta > 0) 
		{
			bNegativo = (0 - b)
			raiz_delta = Matematica.raiz(delta, 2) 
			boa = (bNegativo + raiz_delta)
			bom = (bNegativo - raiz_delta)
			x1 = (boa/2*a)
			x2 = (bom/2*a)
			se (delta != 0)
			{
				escreva("\npara os coeficientes a = ", a , " b = ", b , " c = " , c ,"  as raizes sao ", +x1, " e ", x2)
			}
			senao
			{
				escreva("\npara os coeficientes a = ", a, " b = ", b ," c = ", c ,"  a raiz e 0")
			}
		}
		senao
		{
			escreva("\npara os coeficientes a = ", a, " b = ", b ," c = ", c ,"  nao a raizes possiveis")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 979; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */