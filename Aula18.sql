-- ‘  João da Silva ‘ é diferente de ‘João da Silva’

-- TRIM: remove todos os espaços em branco que estão no início e no final de um texto.

SELECT * FROM CADASTROS;

-- Sintaxe:
-- TRIM(coluna)

SELECT
    NOME_COMPLETO,
    TRIM(NOME_COMPLETO) AS NOME_CORRIGIDO
FROM CADASTROS;

-- LPAD e RPAD: pense nelas como preenchedores. Elas servem para garantir que um texto tenha um tamanho fixo, preenchendo com algum caractere que a gente escolher.

-- LPAD: significa Left Pad, ou seja, preencher à esquerda.
-- RPAD: significa Right Pad, ou seja, preencher à direita.

-- A sintaxe é a mesma para os dois: 

-- LPAD(texto_original, tamanho_final, caractere_de_preenchimento)
-- RPAD(texto_original, tamanho_final, caractere_de_preenchimento)

SELECT
    LPAD('345', 6, '0') AS CODIGO_PRODUTO
FROM DUAL; -- DUAL É UMA TABELA PADRÃO PARA TESTES RAPIDOS

SELECT
    RPAD('Relatório de Vendas', 20, '.') AS TITULO
FROM DUAL;

SELECT
    RPAD('Ana', 20, '.') AS NOME_FORMATADO
FROM DUAL;

-- RECAPITULANDO

-- TRIM: Nosso faxineiro, remove espaços em branco do início e do fim. Essencial para limpeza de dados!
-- LPAD: Preenche um texto à esquerda até ele atingir um tamanho desejado. Ótimo para padronizar códigos.
-- RPAD: Preenche um texto à direita. Perfeito para alinhar textos em relatórios.
