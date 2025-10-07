SELECT
     * 
FROM
     vendas_itens2
WHERE
    unidade LIKE 'K%'   /*Começa com 'K' // e %K busca os que Termina com 'K'*/
ORDER BY    
    valor_unitario ASC
LIMIT 20;


SELECT 
 *
FROM
    vendas_itens2
ALTER TABLE vendas_itens2
ADD COLUMN custo_total NUMERIC(12,2)
ADD COLUMN venda_total NUMERIC(12,2)


UPDATE vendas_itens2
SET custo_total = ROUND(quantidade * valor_unitario, 2),
SET venda_total = ROUND(sum(custo_total),2)

SELECT
    count(*) AS total_registros
FROM
    vendas_itens2

SELECT
    count(DISTINCT produto_id) AS qtd_produtos /* possivel visualizar quantas produtos DIFERENTES existem no sistema*/ 
FROM
    vendas_itens2

SELECT
    produto_id,
    sum(quantidade) AS quantidade_total,
    count(quantidade)
FROM
    vendas_itens2
GROUP BY
    produto_id
ORDER BY
    produto_id
SELECT
    venda_id,

/* WHERE = ANTES DO AGRUPAMENTO
HAVING = FILTRO DEPOIS DO AGRUPAMENTO*/

SELECT
    venda_id,
    SUM(custo_total) AS total_venda,
    data_venda
FROM
    vendas_itens2
GROUP BY
    venda_id,
    data_venda
HAVING
    sum(custo_total) < 400
ORDER BY
    total_venda DESC;


