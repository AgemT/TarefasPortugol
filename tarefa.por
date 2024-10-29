programa
{
inclua biblioteca Util --> u

    funcao inicio()
    {
        elementos()
        fin()

        inversao()
        fin()

        notasMedias()
        fin()

        numerosPares()
        fin()

        vetorAleatorio()
        fin()

        buscarChave()
        fin()

        intercalarParesImpares()
        fin()

        matrizPares()
        fin()

        geradorAventureiro()
        fin()
    }

    funcao elementos()
    {
        inteiro vetor[5] = {10, 20, 30, 40, 50}
        escreva("Vetor em ordem normal: ")
        para (inteiro i = 0; i < 5; i++) 
        {
            escreva(vetor[i], " ")
        }
    }

    funcao inversao()
    {
        inteiro vetor[5] = {10, 20, 30, 40, 50}
        escreva("Vetor em ordem inversa: ")
        para (inteiro i = 4; i >= 0; i--)
        {
            escreva(vetor[i], " ")
        }
    }

    funcao notasMedias()
    {
        real notas[4]
        real soma = 0
        real media

        para (inteiro i = 0; i < 4; i++)
        {
            escreva("Digite a nota ", i + 1, ": ")
            leia(notas[i])
            soma = soma + notas[i]
        }

        media = soma / 4
        escreva("\nNotas: ")

        para (inteiro j = 0; j < 4; j++) 
        {
            escreva(notas[j], " ")
        }

        escreva("\nMédia: ", media)
    }

    funcao numerosPares()
    {
        inteiro numeros[10]
        escreva("Digite 10 números inteiros:\n")

        para (inteiro i = 0; i < 10; i++)
        {
            escreva("Número ", i + 1, ": ")
            leia(numeros[i])
        }

        escreva("\nNúmeros pares e suas posições: ")
        para (inteiro i = 0; i < 10; i++)
        {
            se (numeros[i] % 2 == 0) entao
                escreva("Número ", numeros[i], " na posição ", i, "\n")
            fimse
        }
    }

    funcao vetorAleatorio()
    {
        inteiro numeros[10]
        inteiro numero, j
        logico unico

        escreva("Vetor com números aleatórios entre 1 e 100, sem repetição:\n")
        para (inteiro i = 0; i < 10; i++)
        {
            repita
                unico <- verdadeiro
                numero <- u.aleatorio(100) + 1

                para (j = 0; j < i; j++)
                {
                    se numero == numeros[j] entao
                        unico <- falso
                        interrompa
                    fimse
                }
            ate unico

            numeros[i] <- numero
            escreva(numeros[i], " ")
        }
    }

    funcao buscarChave()
    {
        inteiro vetor[30]
        inteiro chave, contagem = 0

        para (inteiro i = 0; i < 30; i++)
        {
            vetor[i] <- u.aleatorio(15) + 1
        }

        escreva("\nDigite a chave a ser buscada: ")
        leia(chave)

        escreva("Posições onde a chave foi encontrada: ")
        para (inteiro i = 0; i < 30; i++)
        {
            se vetor[i] == chave entao
                escreva(i, " ")
                contagem <- contagem + 1
            fimse
        }

        escreva("\nA chave foi encontrada ", contagem, " vezes.")
    }

    funcao intercalarParesImpares()
    {
        inteiro listadeImpares[5]
        inteiro listadePares[5]
        inteiro intercalado[10]

        escreva("Digite 5 números ímpares:\n")
        para (inteiro i = 0; i < 5; i++)
        {
            repita
                escreva("Ímpar ", i + 1, ": ")
                leia(listadeImpares[i])
            ate listadeImpares[i] % 2 <> 0
        }

        escreva("Digite 5 números pares:\n")
        para (inteiro i = 0; i < 5; i++)
        {
            repita
                escreva("Par ", i + 1, ": ")
                leia(listadePares[i])
            ate listadePares[i] % 2 == 0
        }

        para (inteiro i = 0; i < 5; i++)
        {
            intercalado[i * 2] <- listadeImpares[i]
            intercalado[i * 2 + 1] <- listadePares[i]
        }

        escreva("\nVetor intercalado: ")
        para (inteiro i = 0; i < 10; i++)
        {
            escreva(intercalado[i], " ")
        }
    }

    funcao matrizPares()
    {
        inteiro matriz[3][5]

        escreva("Digite os valores da matriz 3x5:\n")
        para (inteiro i = 0; i < 3; i++)
        {
            para (inteiro j = 0; j < 5; j++)
            {
                escreva("Posição [", i, "][", j, "]: ")
                leia(matriz[i][j])
            }
        }

        escreva("\nNúmeros pares e suas posições:\n")
        para (inteiro i = 0; i < 3; i++)
        {
            para (inteiro j = 0; j < 5; j++)
            {
                se matriz[i][j] % 2 == 0 entao
                    escreva("Número ", matriz[i][j], " na posição [", i, "][", j, "]\n")
                fimse
            }
        }
    }

    funcao geradorAventureiro()
    {
        inteiro dia, mes, ano
        cadeia frases[5] = {"Aventureiro", "Mago", "Guerreiro", "Explorador", "Sábio"}

        escreva("Digite seu dia de nascimento: ")
        leia(dia)
        escreva("Digite seu mês de nascimento: ")
        leia(mes)
        escreva("Digite seu ano de nascimento: ")
        leia(ano)

        escreva("Você é um ", frases[(dia + mes + ano) % 5])
    }

    funcao fin()
    {
        u.aguarde(300)
        limpa()
    }
}

