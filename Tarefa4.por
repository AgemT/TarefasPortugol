programa
{
	inclua biblioteca Util --> u
	//Uésley, um marceneiro mirim, para fazer um
	//Talho, precisa cortar vários pedaços de madeira
	//45 cm cada um. Ele pode comprar tábuas de 3, 4
	//5 metros. Usando os operadores div e mod, faça
	//programa que calcule a quantidade de pedaços e
	//obra para cada tipo de tábua, permitindo assim
	// melhor escolha do marceneiro.
	inteiro metros
	caracter entrada
	funcao qtosMetros()
	{
		escreva("Quantos metros tem a tabua que sera cortada?\n3,4 ou 5\n")
		leia(entrada)
		escolha(entrada)
		{
			caso '3':
			{
				metros = 3
				pare
			}
			caso '4':
			{
				metros = 4
				pare
			}
			caso '5':
			{
				metros = 5
				pare
			}
			caso contrario:
			{
				escreva("/nAcho que voce errou algo :)")
				qtosMetros()
			}
		}
	}
	funcao inicio()
	{	
		qtosMetros()
		escreva("Serao feitos ",(metros*100)/45 , " pedacos de madeira")
		se ((metros*1000)%45 > 0)
		{
			escreva(" e sobrarao ", (metros*100)%45, " centimetros")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
