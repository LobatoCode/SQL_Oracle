-- INNER JOIN

-- A regra aqui é: só me mostre quem está nas duas tabelas ao mesmo tempo. Ele mostra a interseção entre as duas tabelas.

-- Para fazer essa combinação, usamos uma chave em comum, que no nosso caso é a coluna ID_ALUNO, pois essa coluna está presente nas duas tabelas.

-- A consulta seria assim:

SELECT ALUNOS.NOME, MATRICULAS.ATIVIDADE  -- VER A COLUNA NOME DA TABELA ALUNOS E A COLUNA ATIVIDADE DA TABELA MATRICULAS
FROM ALUNOS                               -- TABELA PRINCIPAL É ALUNOS
INNER JOIN MATRICULAS                     -- TABELA SECUNDARIA É MATRICULAS
ON ALUNOS.ID_ALUNO = MATRICULAS.ID_ALUNO; -- COLUNA EM COMUM ENTRE AS DUAS TABELAS

-- LEFT JOIN

-- A regra dele é: me traga todo mundo da tabela da esquerda e, se eles tiverem uma combinação na direita, me mostre também. Se não tiverem, tudo bem, apenas me diga que não encontrou nada.

-- Para fazer essa combinação, usamos uma chave em comum, que no nosso caso é a coluna ID_ALUNO, pois essa coluna está presente nas duas tabelas.

-- A consulta fica quase igual, só mudamos o tipo de JOIN:

SELECT ALUNOS.NOME, MATRICULAS.ATIVIDADE  -- VER A COLUNA NOME DA TABELA ALUNOS E ATIVIDADE DA TABELA MATRICULAS
FROM ALUNOS                               -- TABELA PRINCIPAL É ALUNOS
LEFT JOIN MATRICULAS                      -- TABELA SECUNDARIA É MATRICULAS
ON ALUNOS.ID_ALUNO = MATRICULAS.ID_ALUNO; -- COLUNA EM COMUM ENTRE AS DUAS TABELAS

-- RIGHT JOIN

-- A regra dele é: me traga todas as matrículas da tabela da direita e, se o aluno correspondente estiver na tabela da esquerda, me mostre quem é. Se não estiver, não tem problema.

-- Para fazer essa combinação, usamos uma chave em comum, que no nosso caso é a coluna ID_ALUNO, pois essa coluna está presente nas duas tabelas.

-- A consulta fica quase igual, só mudamos o tipo de JOIN:

SELECT ALUNOS.NOME, MATRICULAS.ATIVIDADE  -- VER A COLUNA NOME DA TABELA ALUNOS E ATIVIDADE DA TABELA MATRICULAS
FROM ALUNOS                               -- TABELA PRINCIPAL É ALUNOS
RIGHT JOIN MATRICULAS                     -- TABELA SECUNDARIA É MATRICULAS
ON ALUNOS.ID_ALUNO = MATRICULAS.ID_ALUNO; -- COLUNA EM COMUM ENTRE AS DUAS TABELAS

-- FULL JOIN

-- A regra dele é: junte TUDO! Me mostre todo mundo da tabela da esquerda e todo mundo da tabela da direita. Onde houver combinação, junte. Onde não houver, preencha com nulo e me mostre mesmo assim.

-- Para fazer essa combinação, usamos uma chave em comum, que no nosso caso é a coluna ID_ALUNO, pois essa coluna está presente nas duas tabelas.

-- A consulta fica quase igual, só mudamos o tipo de JOIN:

SELECT ALUNOS.NOME, MATRICULAS.ATIVIDADE  -- VER A COLUNA NOME DA TABELA ALUNOS E A COLUNA ATIVIDADE DA TABELA MATRICULAS
FROM ALUNOS                               -- TABELA PRINCIPAL É ALUNOS
FULL JOIN MATRICULAS                      -- TABELA SECUNDARIA É MATRICULAS
ON ALUNOS.ID_ALUNO = MATRICULAS.ID_ALUNO; -- COLUNA EM COMUM ENTRE AS DUAS TABELAS
