# Atualização de Estoque com PHP 8 e MySQL

## Descrição

Este projeto contém um script PHP para atualizar o estoque em um banco de dados MySQL. O script insere e atualiza registros na tabela estoque com base em um JSON fornecido.

## Requisitos

- WAMP (ou outro servidor local com PHP 8 e MySQL)
- Navegador da web
- phpMyAdmin (para gerenciamento do banco de dados)

## Configuração

1. *Configuração do Banco de Dados*:
   - Abra o phpMyAdmin (http://localhost/phpmyadmin).
   - Crie um banco de dados (se ainda não existir).
   - Execute o script SQL localizado em schema.sql para criar a tabela estoque.

2. *Configuração do Código PHP*:
   - Salve o arquivo PHP (atualizacao_estoque.php) no diretório C:\wamp\www (ou o caminho correspondente no seu sistema).

3. *Rodar o Script*:
   - Abra um navegador e acesse http://localhost/atualizacao_estoque.php.
   - O script irá atualizar o banco de dados com os dados fornecidos no JSON.

4. *Verificar a Atualização*:
   - No phpMyAdmin, selecione o banco de dados e verifique se a tabela estoque foi atualizada corretamente.

## Notas

- Certifique-se de que o WAMP está em execução e que os serviços Apache e MySQL estão ativos.
- Modifique as credenciais de conexão no código PHP se necessário.
