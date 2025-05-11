-- ORDER BY: ordena os dados de forma crescente ou decrescente.
-- WHERE: filtra os dados.

SELECT * FROM alunos;

INSERT INTO alunos (id_aluno,nome_aluno,sexo_aluno,data_nasc_aluno) 
VALUES (3,'Jose','M','02/03/2000');

INSERT INTO alunos (id_aluno,nome_aluno,sexo_aluno,data_nasc_aluno) 
VALUES (4,'Bruna','F','26/11/2005');

INSERT INTO alunos (id_aluno,nome_aluno,sexo_aluno,data_nasc_aluno) 
VALUES (5,'Pedro','M','18/09/1990');

COMMIT;

-- ORDER BY CRESCENTE

SELECT * FROM alunos ORDER BY nome_aluno;
SELECT * FROM alunos ORDER BY id_aluno;

-- ORDER BY DECRESCENTE

SELECT * FROM alunos ORDER BY nome_aluno DESC;
SELECT * FROM alunos ORDER BY id_aluno DESC;

-- WHERE 

SELECT * FROM alunos;

-- Selecionar todos os alunos onde o sexo é Masculino.
SELECT * FROM alunos 
WHERE sexo_aluno = 'M';

-- ATENCAO: O SQL Oracle é CASE SENSITIVE, ou seja, diferencia Maiusculo
-- de Minusculo.

-- ATENCAO: a coluna sexo_aluno é do tipo VARCHAR (texto), então no filtro
-- o M deve estar entre aspas simples.

-- Selecionar todos os alunos onde o sexo é Feminino.
SELECT * FROM alunos 
WHERE sexo_aluno = 'F';

-- Selecionar todos os alunos onde o id é igual a 2.
SELECT * FROM alunos 
WHERE id_aluno = 2;

-- ATENCAO: a coluna id_aluno é do tipo NUMBER, então no filtro
-- o valor 2 nao pode estar entre aspas.

-- Podemos aprimorar esses filtros (WHERE) usando outros operadores.

-- Maior > 
-- Menor <
-- Diferente <>
-- AND
-- OR
-- IN
-- BETWEEN
-- LIKE

-- Selecione todos os alunos onde o id é maior que 3.
SELECT * FROM alunos 
WHERE id_aluno > 3;

-- Selecione todos os alunos onde o id é menor que 3.
SELECT * FROM alunos 
WHERE id_aluno < 3;

-- Selecione todos os alunos onde o sexo é diferente de Masculino.
SELECT * FROM alunos 
WHERE sexo_aluno <> 'M';

-- Selecione todos os alunos onde o sexo é Masculino e id maior que 3.
SELECT * FROM alunos 
WHERE sexo_aluno = 'M' AND id_aluno > 3;

-- Selecione todos os alunos onde o sexo é Masculino ou Feminino.
SELECT * FROM alunos 
WHERE sexo_aluno = 'M' OR sexo_aluno = 'F';

-- Selecione todos os alunos onde os valores 2 e 3 estejam contidos em id_aluno.
SELECT * FROM alunos 
WHERE id_aluno IN (2,3);

-- Selecione todos os alunos onde o id seja entre 2 e 4.
SELECT * FROM alunos 
WHERE id_aluno BETWEEN 2 AND 4; 

-- Selecione todos os alunos onde nome_aluno comece com a letra C.
SELECT * FROM alunos 
WHERE nome_aluno LIKE 'B%';

-- Selecione todos os alunos onde nome_aluno termine com a letra A.
SELECT * FROM alunos 
WHERE nome_aluno LIKE '%e';

-- ATENCAO: No like importa se a letra é Maiuscula ou Minuscula.

-- Como nao tem nomes que terminem com a letra E em Maiusculo, entao o select
-- nao ira retornar nada.
SELECT * FROM alunos 
WHERE nome_aluno LIKE '%E';
