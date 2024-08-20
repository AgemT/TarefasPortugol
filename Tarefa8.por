programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	//Faça um programa que peça o tamanho de um arquivo para download
	//(em MB) e a velocidade de um link de Internet (em Mbps), calcule e
	//informe o tempo aproximado de download do arquivo usando este link
	//(em minutos).
	real tamanho
	real link
	real tempo
	funcao inicio()
	{	
		escreva("Digite o tamanho do arquivo para download (em MB): ")
		leia(tamanho)
		escreva("Digite a velocidade do link de Internet (em Mbps): ")
		leia(link)
		tempo = (tamanho / (link * 0.125)) / 60
		escreva("O tempo aproximado de download do arquivo é de: ", tempo, " minutos")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 627; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
