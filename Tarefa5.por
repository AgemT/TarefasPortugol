programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	//Um eletricista precisa comprar fio que irá passar, pelo telhado, por toda a
	//gonal de uma casa de formato retangular. Como ele não tem condições de
	//ir a diagonal com precisão (ou talvez não queira...), a solução alternativa
	// ele encontrou foi medir os lados da casa, sabendo que a diagonal pode ser
	//culada com base nos lados pelo Teorema de Pitágoras (a2= b2+ c2).
	//Considerando uma casa que mede 11,5 x 6,3 metros, faça um
	//grama que calcule e escreva na tela a quantidade mínima
	//essária de fio a ser comprada.b. Aprimore o exercício anterior, lendo dois valores do usuários (L1 e
	//, calculando e mostrando a quantidade de fios que o eletricista
	//ria para passar o fio pelo telhado.
	real ladoUm = 11.5
	real ladoDois = 6.3
	funcao inicio()
	{	
		escreva("No caso de uma casa de lado 11.5 e 6.3, o tamanho em metros da diagonal e de ", m.raiz((m.potencia(ladoUm, 2)) + (m.potencia(ladoDois,2)), 2))
		escreva("\nQuantos metros tem o SEU lado um? ")
		leia(ladoUm)
		escreva("E seu lado dois? ")
		leia(ladoDois)
		escreva("A diagonal e igual a ", m.raiz((m.potencia(ladoUm, 2)) + (m.potencia(ladoDois,2)), 2), " metros")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
