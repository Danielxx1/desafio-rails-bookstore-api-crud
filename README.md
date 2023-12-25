# bookstore

---Desenvolvido em Ruby on Rails . Este projeto consiste em um crud completo com api integrada relacionamento entre os dados e regras de implementação etc..
  - versao do ruby: 3.2.2
  - versao do rails: 7.1.2


---requisitos para rodar o projeto ,execute os seguintes comandos:

--Clone o repositório com o comando: (git clone)

--para instalar as dependencias necessarias navegue ate a pasta do projeto e executo o seguinte comando:  (bundle install) 

--execute as migraçoes do banco de dados com o comando: (rails db:migrate)

--para inicializar o projeto execute o seguinte comando:  (rails server)

# ETAPAS PARA A CRIAÇÃO DO PROJETO BOOKSTORE:

--Passo 1 ( criaçao do crud )
  - Cadastrar autores
  - Cadastrar livros vinculados com autor
  - cadastrar fornecedores com uma conta
  - cadastrar peças vinculao com fornecedor
  - cadastrar montagens com varias peças e vinculado com livro

--Passo 2 ( criaçao da api ) foi utilizado os mesmos requisitos 
  - Cadastrar autores
  - Cadastrar livros vinculados com autor
  - cadastrar fornecedores com uma conta
  - cadastrar peças vinculao com fornecedor
  - cadastrar montagens com varias peças e vinculado com livro

-- passo 3 ( criado regras e alterando informaçoes do banco de dados )
  Alterar:
    - Adicionar campo CNPJ em fornecedor
    - Adicionar campo Digito Verificador em Conta
    - Adicionar campo ISBN em Livro
    - Adicionar campo CPF em Author
  Calcular:
    - Digito Verificador em Conta
  Validar:
    - CNPJ em Fornecedor
    - ISBN em Livro
    - CPF em 
-- Passo 4 ( criaçao de filtros de pesquisas e adicionar novos campos )
  Adicionar:
    - Campo titulo em Livro
    - Campo nome em Peça
  Filtrar:
    - Fornecedor por nome
    - Fornecedor por numero da conta em conta
    - Livros por titulo
    - Livros por nome em Autor
    - Montagem por nome em Peça
    - Fornecedor por nome do Autor

  




