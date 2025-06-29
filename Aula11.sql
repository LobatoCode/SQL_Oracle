-- SUBQUERY = SUBSELECT OU SUBCONSULTA

-- UMA SUBCONSULTA É UMA INSTRUÇÃO DO TIPO SELECT DENTRO DE OUTRA INSTRUÇÃO SQL.

-- UM POUCO CONFUSO NÉ ? MAS IREMOS ENTENDER MELHOR FAZENDO UM EXEMPLO BEM SIMPLES.

-- VER REGISTROS DA TABELA ALUNOS
SELECT * FROM ALUNOS;

-- VER APENAS A COLUNA PESO DA TABELA ALUNOS
SELECT PESO_ALUNO FROM ALUNOS;

-- VER A COLUNA PESO SOMENTE DA ALUNA PATRICIA
SELECT PESO_ALUNO FROM ALUNOS
WHERE NOME_ALUNO = 'Patrícia';

-- VER AS COLUNAS NOME E PESO ONDE PESO_ALUNO É MAIOR QUE 96 
SELECT NOME_ALUNO, PESO_ALUNO FROM ALUNOS
WHERE PESO_ALUNO > 99;

-- ATENCAO: ESSE SELECT EQUIVALE A 99
-- SELECT PESO_ALUNO FROM ALUNOS WHERE NOME_ALUNO = 'Patrícia'; => 99

-- É RETORNADO O NOME E PESO DE TODOS OS ALUNOS QUE PESAM MAIS DO QUE A ALUNA PATRICIA
SELECT NOME_ALUNO, PESO_ALUNO FROM ALUNOS
WHERE PESO_ALUNO > (SELECT PESO_ALUNO FROM ALUNOS WHERE NOME_ALUNO = 'Patrícia');
