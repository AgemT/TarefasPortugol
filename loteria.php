<?php
function inicio() {
    $dadosJson = file_get_contents("apostas.json"); 
    $dados = json_decode($dadosJson, true);

    $escolheuJogo = false;
    while (!$escolheuJogo) {
        $jogo = readline("em qual jogo voce quer apostar?\nMegasena, Quina, Lotomania ou Lotofacil\n");

        $jogo = strtolower($jogo);
        if (!isset($dados[$jogo])) {
            echo "jogo invalido! por favor, veja se escreveu o nome dos jogos corretamente.\n";
        } else {
            echo "Você escolheu: " . ucfirst($jogo) . "\n";
            $escolheuJogo = true;
            $config = $dados[$jogo];
            echo "Regras do jogo: \n";
            echo "total de numeros disponiveis: " . $config['numero'] . "\n";
            echo "minimo de numeros: " . $config['minimoNumeros'] . "\n";
            echo "maximo de numeros: " . $config['maxNumeros'] . "\n";
            echo "preco base por aposta: R$ " . number_format($config['preco'], 2, ',', '.') . "\n";
        }
    }
    $quantidadeNumerosValida = false;
    while (!$quantidadeNumerosValida) {
        $quantidadeNumeros = readline("Quantos numeros você quer gerar aleatoriamente (entre " . $config['minimoNumeros'] . " e " . $config['maxNumeros'] . ")? ");

        if (is_numeric($quantidadeNumeros) && $quantidadeNumeros >= $config['minimoNumeros'] && $quantidadeNumeros <= $config['maxNumeros']) {
            $quantidadeNumerosValida = true;
        } else {
            echo "numero invalido! por favor, insira um numero entre " . $config['minimoNumeros'] . " e " . $config['maxNumeros'] . ".\n";
        }
    }
    $apostasValidas = false;
    while (!$apostasValidas) {
        $apostas = readline("quantas apostas voce quer fazer? ");

        if (is_numeric($apostas) && $apostas > 0) {
            $apostasValidas = true;
        } else {
            echo "por favor, insira uma quantidade valida de apostas.\n";
        }
    }
    echo "\n--- apostas Geradas ---\n";
    $precoTotal = 0;
    for ($i = 0; $i < $apostas; $i++) {
        $numeros = gerarAposta($config['numero'], $quantidadeNumeros);
        $jogada = "aposta " . ($i + 1) . ": " . implode(", ", $numeros) . "\n";
        echo $jogada;
        $precoTotal += $config['preco'];
    }
    echo "\nTotal gasto: R$ " . number_format($precoTotal, 2, ',', '.') . "\n";
}

function gerarAposta($totalNumeros, $qtNumeros) {
    $numeros = [];
    while (count($numeros) < $qtNumeros) {
        $numero = random_int(1, $totalNumeros);
        if (!in_array($numero, $numeros)) {
            $numeros[] = $numero;
        }
    }
    sort($numeros);
    return $numeros;
}

// Iniciar o programa
inicio();
?>
