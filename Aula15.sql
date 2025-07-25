-- O HAVING É COMO UM FILTRO PARA GRUPOS DE DADOS

-- USAMOS O WHERE PARA FILTRAR LINHAS E O HAVING P/ FILTRAR GRUPOS CRIADOS PELO GROUP BY

SELECT * FROM ALUNOS;

-- VAMOS AGRUPAR TODAS AS LINHAS QUE TEM O MESMO VALOR NA COLUNA CIDADE_ALU
-- COUNT(*): CONTA O NUMERO TOTAL DE LINHAS
SELECT COUNT(*), CIDADE_ALU
FROM ALUNOS
GROUP BY CIDADE_ALU;

-- QUEREMOS VER APENAS OS REGISTROS QUE SE REPETEM 4 VEZES
SELECT COUNT(*), CIDADE_ALU
FROM ALUNOS
GROUP BY CIDADE_ALU
HAVING COUNT(*) = 4;
