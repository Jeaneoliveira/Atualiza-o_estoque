# Atualização de Estoque com PHP 8 e MySQL

## Descrição

Este projeto contém um script PHP para atualizar o estoque em um banco de dados MySQL. O script insere e atualiza registros na tabela estoque com base em um JSON fornecido.

## Requisitos

- WAMP (ou outro servidor local com PHP 8 e MySQL)
- Navegador da web
- phpMyAdmin (para gerenciamento do banco de dados)

## Configuração

1. *Importe o arquivo `estoque.sql` para criar a tabela e inserir os dados de exemplo:
    - No phpMyAdmin, vá para a aba "Importar" e selecione o arquivo `estoque.sql`.
    - Clique em "Executar".

2. *Configuração do Código PHP*:
   - Salve o arquivo PHP (atualizacao_estoque.php) no diretório C:\wamp\www (ou o caminho correspondente no seu sistema).

3. *Rodar o Script*:
   - Abra um navegador e acesse http://localhost/atualizacao_estoque.php.
   - O script irá atualizar o banco de dados com os dados fornecidos no JSON.

4. *Verificar a Atualização*:
   - No phpMyAdmin, selecione o banco de dados e verifique se a tabela estoque foi atualizada corretamente.
  
   - se ao acessar `http://localhost/atualizar_estoque.php` no navegador aparecer a mensagem "Estoque atualizado com sucesso!", isso indica que o script PHP foi executado corretamente e os dados foram inseridos ou atualizados no banco de dados conforme esperado.
![Imagem do Projeto](https://github.com/Jeaneoliveira/Atualiza-o_estoque/blob/main/estoque.jpg?raw=true)
## Notas

- Certifique-se de que o WAMP está em execução e que os serviços Apache e MySQL estão ativos.
- Modifique as credenciais de conexão no código PHP se necessário.
