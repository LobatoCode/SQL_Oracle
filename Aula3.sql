-- O que é um Banco de Dados ?

-- É como um armário digital onde guardamos informações organizadas.
-- O Banco de Dados se assemelha a um conjunto de planilhas, onde cada
-- planilha guardasse nomes, telefones e endereços das pessoas.
-- Ele é usado em quase tudo: Redes Sociais, Lojas Online, Bancos,
-- Aplicativos e Sites.

-- O que são Tabelas ?

-- As Tabelas em Banco de Dados são como planilhas com linhas e colunas.
-- Cada coluna representa um tipo de informação, como nome, idade e telefone.
-- Cada linha é um registro com os dados completos de algo ou alguém.
-- Imagine uma tabela chamada ALUNOS.

-- Nome         Idade        Série
-- Ana          12           7º
-- Bruno        13           8º
-- Camila       11           6º

-- O que são Registros ?

-- São as linhas de uma tabela. Cada registro guarda as informações completas
-- de uma coisa ou pessoa. Imagine uma tabela chamada CLIENTES.

-- Nome         Idade        Cidade
-- João         30           São Paulo
-- Maria        25           Recife
-- Pedro        40           Salvador

-- Cada linha da tabela acima é um registro.

-- Tipos de Dados

-- Os tipos de dados servem para o banco entender que tipo de informação será
-- guardada em cada coluna da tabela. Pensa assim: você não mistura números com
-- palavras nem datas com nomes, né ? O banco também não !
-- Aqui vão os principais tipos de dados:
-- VARCHAR: palavras, e-mails, endereços.
-- NUMBER: quantidades, idades, valores.
-- DATE: datas.
-- BOOLEAN: sim ou não, verdadeiro ou falso.

------------------------------------------------------------------------------

-- Criar Tabelas

-- Tabela: Alunos
-- Deve conter as seguintes colunas:
-- Coluna 1: id do tipo number
-- Coluna 2: nome do tipo varchar
-- Coluna 3: sexo do tipo varchar
-- Coluna 4: data de nascimento do tipo date

------------------------------------------------------------------------------

-- Estrutura do comando para Criar Tabela

-- nome da coluna + tipo da coluna + tamanho

-- Executar o comando: selecionar comando e clicar no botão verde de play

CREATE TABLE alunos (
    id_aluno        NUMBER,
    nome_aluno      VARCHAR2(50),
    sexo_aluno      VARCHAR2(1),
    data_nasc_aluno DATE
);

------------------------------------------------------------------------------

-- Inserir registros na tabela

-- As colunas devem estar na mesma ordem

-- Nos valores, número sem aspas, textos com aspas e datas com aspas

INSERT INTO alunos (id_aluno, nome_aluno, sexo_aluno, data_nasc_aluno) 
VALUES (1,'Lobato','M','12/05/1990');

------------------------------------------------------------------------------

-- Ver os registros na tabela

-- Asterisco significa que quero ver todas as colunas 

SELECT * FROM alunos;

SELECT nome_aluno FROM alunos;









 