programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	real km
	inteiro dias
	const inteiro reaisDia = 60
	const real reaisKm = 0.15
	real preco = 0
	funcao calc()
	{
		escreva("quantos km o carro alugado carro percorreu? ")
		leia(km)
		escreva("em quantos dias? ")
		leia(dias)
		preco = (dias*reaisDia)+(km*reaisKm)
		escreva("voce deve pagar ", preco, " reais")
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
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
