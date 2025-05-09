-- COMMIT: Imagine que voce esta fazendo varias mudancas no banco, como insercoes
-- atualizacoes ou exclusoes de dados. O COMMIT é como apertar "SALVAR". Ele 
-- confirma todas as alteracoes feitas, garantindo que elas se tornem permanentes
-- no banco de dados.

-- ROLLBACK: é como um "VOLTAR ATRAS". Ele é usado para desfazer todas as mudancas,
-- restaurando o estado do banco de dados para antes das alteracoes feitas. Isso
-- é util em situacoes onde voce precisa cancelar uma acao ou corrigir um erro.

-- O commit e o rollback salvam ou desfazem acoes de INSERT, UPDATE e DELETE.

-- INSERT: inserir dados na tabela.
-- UPDATE: atualizar dados na tabela.
-- DELETE: excluir dados na tabela.

-- Exemplo 1: Inserir um registro na tabela ALUNOS. Salvar com o COMMIT.

SELECT * FROM alunos;

INSERT INTO alunos (id_aluno,nome_aluno,sexo_aluno,data_nasc_aluno) 
VALUES (2,'Code','F','11/01/1991');

COMMIT;

-- Exemplo 2: Excluir um registro na tabela ALUNOS. Desfazer esa exclusao com
-- o ROLLBACK.

SELECT * FROM alunos;

DELETE FROM alunos
WHERE id_aluno = 1;

ROLLBACK;

-- Temos alguns comandos em que o commit é executado automaticamente. Ou seja,
-- no momento que executo o comando, o commit também é executado em seguida.
-- Consequentemente, nao conseguimos desfazer tais comandos. 

-- Que comandos são esses ?

-- CREATE, ALTER, DROP

-- Usamos o create para criar a tabela de alunos. Create table alunos.


