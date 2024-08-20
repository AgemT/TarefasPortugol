programa
{
	inclua biblioteca Util --> u
	//constantes
	real terraSegundos = 31557600
	real mercurioAno = 0.2408467
	real venusAno = 0.61519726
	real marteAno = 18808158
	real jupiterAno = 11.862615
	real uranoAno = 84.016846
	real netunoAno = 16479132
	//variavel
	real idadeTerrestre
	//Questao a
	funcao a()
	{
		escreva("\nSua idade e de ", ((977000000/terraSegundos)/mercurioAno), " anos em marte") 
		u.aguarde(2000)
		inicio()
	}
	//Questao b
	funcao b()
	{	
		escreva("\nQuantos anos voce tem? ")
		leia(idadeTerrestre)
		escreva("\nVoce quer saber a sua idade em:\nA) Mercurio\nB) Venus \nC) Marte \nD) Jupiter \nF) Urano \nG) Netuno\n")
		caracter input
		leia(input)
		escolha(input)
		{
			caso 'A':
			{
				escreva("Sua idade e igual a ", idadeTerrestre/mercurioAno, "!")
				pare
			}
			caso 'B':
			{
				escreva("Sua idade e igual a ", venusAno, "!")
				pare
			}
			caso 'C':
			{
				escreva("Sua idade e igual a ", idadeTerrestre/marteAno, "!")
				pare
			}
			caso 'D': 
			{
				escreva("Sua idade e igual a ", idadeTerrestre/jupiterAno, "!")
				pare
			}
			caso 'F':
			{
				escreva("Sua idade e igual a ", idadeTerrestre/uranoAno, "!")
				pare
			}
			caso 'G':
			{
				escreva("Sua idade e igual a ", idadeTerrestre/netunoAno, "!")
				pare
			}
		}
		u.aguarde(2000)
		inicio()
	}
	funcao inicio()
	{
		limpa()
		escreva("Voce quer ler a questao a ou a questao b? ")
		caracter input
		leia(input)
			escolha(input)
			{
				caso 'a':
				{
					a()
					pare
				}
				caso 'b':
				{
					b()
					pare
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
