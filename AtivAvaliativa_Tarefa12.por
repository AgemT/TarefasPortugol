programa
{
    inclua biblioteca Matematica --> m
    inclua biblioteca Util --> u
    inteiro codigos [7] = {100,101,102,103,104,105,106}
    cadeia identificacao [7] = {"Cachorro quente","Bauru","Bauru c/ovo","Hamburger","Cheeseburger","Refrigerante","Semente dos Deuses"}
    real preco [7]={5.00,2.60,3.80,9.00,11.00,3.00,1000.00}
    caracter letras [7]= {'a','b','c','d','e','f','g'}
    inteiro pedidos [7] = {0,0,0,0,0,0,0}
    inteiro qtPedidos [7] = {0,0,0,0,0,0,0}
    inteiro numeroPedidos = 0
    caracter inputLetra 
    inteiro inputNumero
    
    funcao tabela()
    {
    	   limpa()
        escreva("Escolha: \n")
        para(inteiro i = 0; i<7 ; i++)
        {
            escreva(letras[i],") ", identificacao[i], " - ", preco[i], "R$ \n")
        }
        escreva("Digite a opção: ")
        leia(inputLetra)
        escolha(inputLetra)
        {
            caso 'a':
                pedidos[numeroPedidos] = 100
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'b':
                pedidos[numeroPedidos] = 101
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'c':
                pedidos[numeroPedidos] = 102
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'd':
                pedidos[numeroPedidos] = 103
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'e':
                pedidos[numeroPedidos] = 104
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'f':
                pedidos[numeroPedidos] = 105
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso 'g':
                pedidos[numeroPedidos] = 106
                escreva("Quantos? ")
                leia(inputNumero)
                qtPedidos[numeroPedidos] = inputNumero
                numeroPedidos += 1
                pare
            caso contrario:
                escreva("Não temos este item!\n")
                tabela()
        }
        
        se(numeroPedidos < 7)
        {
            escreva("Continuar compra (y/n)? ")
            leia(inputLetra)
            escolha(inputLetra)
            {
                caso 'y':
                    tabela()
                    pare
                caso'n':
                	finalizarCompra()
                	pare
                caso contrario:
	                finalizarCompra()
	                pare
            }
        }
        
        finalizarCompra()
    }

    funcao finalizarCompra()
    {
     	limpa()
        real total = 0.0
        escreva("Resumo do pedido:\n")
        para (inteiro i = 0; i < numeroPedidos; i++)
        {
            inteiro indice = 0
            para (inteiro j = 0; j < 7; j++)
            {
                se (pedidos[i] == codigos[j])
                {
                    indice = j
                    pare
                }
            }
            escreva(qtPedidos[i], " x ", identificacao[indice], " - ", qtPedidos[i] * preco[indice], "R$\n")
            total += qtPedidos[i] * preco[indice]
        }
        escreva("Total a pagar: ", total, "R$\n")
    }
    
    funcao inicio()
    {
        tabela()
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */