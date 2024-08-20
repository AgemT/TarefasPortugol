programa
{
	inclua biblioteca Util --> U
	inteiro horasAnuais = 365*24
	inteiro resposta
	inteiro idadeSegundos
	funcao HorasEmUmAno()
	{
		escreva ("\nTem ", horasAnuais," horas em um ano")
	}
	funcao MinutosEmUmaDecada()
	{
		//em uma decada tem no minimo dois anos bissextos (48 horas)
	escreva ("\nTem ", horasAnuais*60*10+48, " minutos em uma decada")
	}
	funcao Idade()
	{
		limpa()
		escreva("\nQual a sua idade (numero de anos)? ")
		leia(resposta)
		idadeSegundos = resposta*horasAnuais*60
		escreva ("\nVoce tem ", idadeSegundos, " segundos ja vividos!")
	}
		funcao chocolate()
	{
		escreva("\nQual a maior quantidade de barras de chocolate voce comeu em uma semana? ")
		inteiro maior
		leia(maior)
		escreva("Qual a menor quantidade? ")
		inteiro menor
		leia(menor)
		real mediaChocolate = (maior+menor)/2
		escreva("Quantos anos voce pretende viver? ")
		inteiro vida
		leia(vida)
		//								media*anos*meses*semanas por mes
		escreva("Voce, em media, vai comer ", mediaChocolate*vida*12*4, " barras durante toda sua vida")
	}
	funcao IdadeReverso()
	{
		escreva("\nUma pessoa que viveu 977MI segundos tem " , 977000000/(horasAnuais*60*60), " anos")
	}
	funcao inicio()
	{
		escreva("\nQual questao voce quer checar?\n*****************************************\n* A)Quantas horas há em um ano?         *\n*****************************************\n* B)Quantos minutos há em uma década?   *\n*****************************************\n* C)Qual é a sua idade em segundos?     *\n*****************************************\n* D)Quantos chocolates você pretende    *\ncomer na vida?                          *\n*****************************************\n* E)Se minha idade é de 977 milhões de  *\n*segundos, qual é minha idade em anos?  *\n*****************************************\n\n")
		caracter questao 
		leia (questao)
		escolha (questao)
		{
			caso ('a'):
				limpa()
				HorasEmUmAno()
				U.aguarde(3000)
				inicio()
				pare
			caso ('b'):
				limpa()	
				MinutosEmUmaDecada()
				U.aguarde(3000)
				inicio()
				pare
			caso ('c'):
				limpa()
				Idade()
				U.aguarde(3000)
				inicio()
				pare
			caso ('d'):
				limpa()
				chocolate()
				U.aguarde(3000)
				inicio()
				pare
			caso ('e'):
				limpa()
				IdadeReverso()
				U.aguarde(3000)
				inicio()
				pare
			caso contrario:
			
				escreva("\nDesculpe, acho que voce errou algo, eu aceito apenas as letras de a a e :)\n")
				U.aguarde(3000)
				inicio()
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 940; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
