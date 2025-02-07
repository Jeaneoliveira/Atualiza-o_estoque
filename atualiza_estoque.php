<?php

// Função para atualizar o estoque
function atualizarEstoque($jsonData) {
    $host = 'localhost';
    $db   = 'estoque';
    $user = 'root';
    $pass = '';
    $charset = 'utf8mb4'; 

    $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
    $options = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];

    try {
        $pdo = new PDO($dsn, $user, $pass, $options);
    } catch (\PDOException $e) {
        error_log("Connection failed: " . $e->getMessage()); // Log de erro de conexão
        return;
    }

    $data = json_decode($jsonData, true);

    $insertStmt = $pdo->prepare("INSERT INTO estoque (produto, cor, tamanho, deposito, data_disponibilidade, quantidade)
                                 VALUES (:produto, :cor, :tamanho, :deposito, :data_disponibilidade, :quantidade)");
                                 
    $updateStmt = $pdo->prepare("UPDATE estoque SET quantidade = :quantidade
                                 WHERE produto = :produto AND cor = :cor AND tamanho = :tamanho AND deposito = :deposito AND data_disponibilidade = :data_disponibilidade");

    foreach ($data as $item) {
        try {
            // Tentativa de inserção
            $insertStmt->execute($item);
        } catch (PDOException $e) {
            // Em caso de erro, tentar a atualização
            if ($e->getCode() == 23000) { // Código 23000 indica um erro de chave duplicada
                $updateStmt->execute($item);
            } else {
                error_log("Error: " . $e->getMessage()); // Log de erro de execução
                return;
            }
        }
    }
}

// JSON de exemplo
$jsonData = '[
    {
        "produto": "10.01.0419",
        "cor": "00",
        "tamanho": "P",
        "deposito": "DEP1",
        "data_disponibilidade": "2023-05-01",
        "quantidade": 15
    },
    {
        "produto": "11.01.0568",
        "cor": "08",
        "tamanho": "P",
        "deposito": "DEP1",
        "data_disponibilidade": "2023-05-01",
        "quantidade": 2
    },
    {
        "produto": "11.01.0568",
        "cor": "08",
        "tamanho": "M",
        "deposito": "DEP1",
        "data_disponibilidade": "2023-05-01",
        "quantidade": 4
    },
    {
        "produto": "11.01.0568",
        "cor": "08",
        "tamanho": "G",
        "deposito": "1",
        "data_disponibilidade": "2023-05-01",
        "quantidade": 6
    },
    {
        "produto": "11.01.0568",
        "cor": "08",
        "tamanho": "P",
        "deposito": "DEP1",
        "data_disponibilidade": "2023-06-01",
        "quantidade": 8
    }
]';

// Chama a função para atualizar o estoque
atualizarEstoque($jsonData);

echo "Estoque atualizado com sucesso!";

?>
