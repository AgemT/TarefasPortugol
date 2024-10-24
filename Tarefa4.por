programa
{
    funcao inicio()
    {
        inteiro tamanhoPedaco = 45
        inteiro t3 = 300 // Tábua de 3 metros
        inteiro t4 = 400 // Tábua de 4 metros
        inteiro t5 = 500 // Tábua de 5 metros

        // Cálculos para a tábua de 3 metros
        inteiro qtdPecasT3 = t3 / tamanhoPedaco
        inteiro sobraT3 = t3 % tamanhoPedaco

        // Cálculos para a tábua de 4 metros
        inteiro qtdPecasT4 = t4 / tamanhoPedaco
        inteiro sobraT4 = t4 % tamanhoPedaco

        // Cálculos para a tábua de 5 metros
        inteiro qtdPecasT5 = t5 / tamanhoPedaco
        inteiro sobraT5 = t5 % tamanhoPedaco

        // Exibir os resultados
        escreva("Para a tábua de 3 metros:\n")
        escreva("Quantidade de pedaços de 45 cm: ", qtdPecasT3, "\n")
        escreva("Sobra: ", sobraT3, " cm\n\n")

        escreva("Para a tábua de 4 metros:\n")
        escreva("Quantidade de pedaços de 45 cm: ", qtdPecasT4, "\n")
        escreva("Sobra: ", sobraT4, " cm\n\n")

        escreva("Para a tábua de 5 metros:\n")
        escreva("Quantidade de pedaços de 45 cm: ", qtdPecasT5, "\n")
        escreva("Sobra: ", sobraT5, " cm\n")
    }
}
