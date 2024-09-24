programa
{
inclua biblioteca Util --> u
inclua biblioteca Matematica --> m
	
/*
	Supondo que a população de um país A
seja da ordem de 80000 habitantes com
uma taxa anual de crescimento de 3% e
que a população de B seja 200000
habitantes com uma taxa de crescimento de 1.5%, façaumprograma 
que calcule e escreva o número de anos necessáriospara que a população 
do país A ultrapasse ou igualeapopulação do país B, mantidas as taxas de 
crescimento.
	*/
	funcao inicio()
	{
		paises()
		mediaSoma()
		maiorN()
		potencia()
		parImpar()
		fibonnacci()
		fatorial()
		valores()
	}
	funcao paises()
	{
		real paisA = 80000.0
		real paisB = 200000.0
		inteiro anos = 0
		enquanto(paisA<paisB)
		{
			paisA += paisA*0.03
			paisB += paisB*0.015
			anos ++
		}
		escreva("demorarao ", anos, " anos para o pais A ter uma populacao\n maior ou igual ao pais B")
		u.aguarde (3000)
		limpa()
	}
	funcao mediaSoma()
	{
		//Faça um programa que leia 5 números e informe a somaeamédia dos números.
		inteiro numero
		inteiro somas = 0
		para(inteiro i = 1; i <= 5 ; i++)
		{
			escreva("\nMe diga um numero:\n")
			leia(numero) 
			limpa()
			somas += numero
		}
		escreva("\nsoma: ",somas,"\nmedia: ", somas/5)
		u.aguarde(3000)
		limpa()
	}
	funcao maiorN()
	{
		real numero = 0.05
		real maior = 0.0
		
		para(inteiro i = 1; i <= 5 ; i++)
		{
			escreva("\nMe diga um numero:\n")
			leia(numero)
			limpa()
			maior = m.maior_numero(maior, numero)
		}
		escreva("o maior eh ", maior)
	}
	funcao potencia()
	{
		escreva("\nme de a base: ")
		inteiro base
		leia(base)
		escreva("me de a potencia: ")
		inteiro potencio
		leia(potencio)
		inteiro calc = 1
		para(inteiro i=0;i<potencio;i++)
		{
			calc=+base*calc
		}
		escreva(calc)
	}
	funcao parImpar()
	{
		inteiro pares[5]
		inteiro impares[5]
		inteiro numero = 0
		inteiro posicaoPar = 0
		inteiro posicaoImpar = 0
		para(inteiro i=1;i<=5;i++)
		{
			escreva("\nMe de um numero inteiro ")
			leia(numero)
			se(numero%2==0 ou numero == 0)
			{
				pares[posicaoPar]=numero
				posicaoPar++
			}
			senao
			{
				impares[posicaoImpar]=numero
				posicaoImpar++
			}
		}
		
			escreva("Par: ")
			para(inteiro j = 0; j<posicaoPar; j++)
			{
				escreva(pares[j],", ")
			}
			escreva("\nimpar: ")
			para(inteiro j = 0; j<posicaoImpar; j++)
			{
				escreva(impares[j],", ")
			}
		
	}
	funcao fibonnacci()
	{
		escreva("\nA série de Fibonacci é formada pela sequência: ")
		inteiro numero =1
		inteiro anterior = 0
		inteiro balde = 0
		enquanto(numero<500)
		{
			balde=numero
			numero=numero+anterior
			escreva(numero,"\n")
			anterior=balde
		}
		pedeFibonaci()
	}
	funcao pedeFibonaci()
	{
		inteiro numero =1
		inteiro anterior = 0
		inteiro balde = 0
		inteiro posicao
		escreva("\nAgora, ate qual posicao voce quer que a sequencia va? ")
		leia(posicao)
		limpa()
		para(inteiro i=1;i<=posicao;i++)
		{
			
			balde=numero
			numero=numero+anterior
			escreva(numero,"\n")
			anterior=balde
		}
	}
	funcao fatorial()
	{
		inteiro fatorando = 0
		 
		escreva("\nMe diga um numero e te darei seu fatorial! ")
		leia(fatorando)
		inteiro calc = fatorando
		para(inteiro i = fatorando-1; i>0; i--)
		{
			calc=calc*i
		}
		escreva("O fatorial eh ",calc)
	}
	funcao valores()
	{
		inteiro numero
		inteiro maior = 0
		inteiro menor = 0
		inteiro soma = 0
		caracter resp 
		logico continuar = verdadeiro
		logico inicioo = verdadeiro
		enquanto(continuar)
		{
			limpa()
			escreva("\nMe diga um numero! ")
			leia(numero)
			se(numero>=0 e numero<=1000)
			{
				se(inicioo)
				{
					menor = numero
				}
				maior = m.maior_numero(numero,maior)
				menor = m.menor_numero(numero, menor)
				soma += numero
				escreva("Voce quer continuar?(s/n) ")
				leia(resp)
				escolha(resp)
				{
					caso's':
						continuar=verdadeiro
					pare
					caso'n':
						continuar=falso
					pare
					caso contrario:
						continuar=falso
					pare
					
				}
			}
			senao
			{
				escreva("Numero invalido! Escreva um numero entre 1000 e 0!")
				valores()
			}
		}
		escreva("maior: ",maior,"\nmenor: ",menor,"\nsoma: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
