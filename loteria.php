<?php
/*function inicio() {
    // ler o arquivo JSON
    $dadosJson = file_get_contents("apostas.json"); 
    $dados = json_decode($dadosJson, true);

    // escolher qual jogo
    $escolheuJogo = false;
    while (!$escolheuJogo) {
        $jogo = readline("Em qual jogo você quer apostar?\nMegasena, Quina, Lotomania ou Lotofacil\n");

        $jogo = strtolower($jogo);
        if (!isset($dados[$jogo])) {
            echo "Jogo inválido! Por favor, veja se escreveu o nome dos jogos corretamente.\n";
        } else {
            echo "Voce escolheu: " . ucfirst($jogo) . "\n";
            $escolheuJogo = true;
            $config = $dados[$jogo];
            echo "Regras do jogo: \n";
            echo "Total de numeros disponiveis: " . $config['numero'] . "\n";
            echo "Minimo de numeros: " . $config['minimoNumeros'] . "\n";
            echo "Maximo de numeros: " . $config['maxNumeros'] . "\n";
            echo "Preco base por aposta: R$ " . number_format($config['preco'], 2, ',', '.') . "\n";
        }
    }
*/
    // Numero de apostas
    $apostasValidas = false;

    while (!$apostasValidas) {
        $quantidadeNumeros = readline("Quantos numeros você quer gerar aleatoriamente (entre $minimoNumeros e $maxNumeros) por aposta? ");
        $maxApostas = $config['numero']/ ;                                                     ///////////
        $apostas = readline("Quantas apostas voce quer fazer? (maximo $maxApostas apostas) \n");

        if (is_numeric($apostas) && $apostas > 0) {
            echo "Voce escolheu $apostas apostas.\n";
            $apostasValidas = true;

            for ($i = 0; $i < $apostas; $i++) {
                $numeros = gerarAposta($config['numero'], $config['minimoNumeros'], $config['maxNumeros']);
                $jogada = "Aposta " . ($i + 1) . ": " . implode(", ", $numeros) . "\n";
                echo $jogada;
            }
            $preco = $apostas*$config['preco'];
            echo "O preco final eh de $preco reais";
        } else {
            echo "Por favor, insira uma quantidade valida de apostas.\n";
        }
    }
}

function gerarAposta($totalNumeros, $minimoNumeros, $maxNumeros) {
    $quantidadeNumeros = readline("Quantos numeros você quer gerar aleatoriamente (entre $minimoNumeros e $maxNumeros) por aposta? ");
    
    if (is_numeric($quantidadeNumeros) && $quantidadeNumeros >= $config['minimoNumeros'] && $quantidadeNumeros <= $config['maxNumeros']) {
        $numeros = range(1, $totalNumeros);
        shuffle($numeros); 
        $aposta = array_slice($numeros, 0, $quantidadeNumeros);
        sort($aposta); 
        return $aposta;
    } else {
        echo "Número inválido! Tente novamente.\n";
        return gerarAposta($totalNumeros, $minimoNumeros, $maxNumeros);
    }
}

// Iniciar o programa
inicio();
?>
