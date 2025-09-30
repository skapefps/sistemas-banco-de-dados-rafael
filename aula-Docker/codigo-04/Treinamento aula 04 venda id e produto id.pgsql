CREATE TABLE IF NOT EXISTS vendas_itens2 (
  id SERIAL PRIMARY KEY,
  venda_id INTEGER NOT NULL,
  produto_id INTEGER NOT NULL,
  quantidade NUMERIC(10,3) NOT NULL,
  unidade TEXT NOT NULL,
  valor_unitario NUMERIC(10,2) NOT NULL,
  data_venda DATE NOT NULL
);
INSERT INTO vendas_itens2 (venda_id, produto_id, quantidade, unidade, valor_unitario, data_venda) VALUES
(2001, 1, 1.000, 'UN', 150.55, '2025-09-01'),
(2001, 3, 0.450, 'Kg', 45.00, '2025-09-01'),
(2001, 5, 3.450, 'Kg', 12.75, '2025-09-01'),
(2001, 9, 2.000, 'UN', 88.78, '2025-09-01'),
(2001,10,20.000, 'UN', 10.00, '2025-09-01'),

(2002, 2, 1.000, 'UN', 99.90,  '2025-09-02'),
(2002, 4, 1.000, 'UN', 225.00, '2025-09-02'),
(2002, 6, 0.874, 'Kg', 35.00,  '2025-09-02'),
(2002, 8, 0.895, 'Kg', 34.50,  '2025-09-02'),
(2002, 1, 2.000, 'UN', 150.55, '2025-09-02'),

(2003, 7, 1.000, 'UN', 199.99, '2025-09-03'),
(2003, 9, 3.000, 'UN', 89.15,  '2025-09-03'),
(2003, 3, 0.860, 'Kg', 46.15,  '2025-09-03'),
(2003, 2, 1.000, 'UN', 99.90,  '2025-09-03'),
(2003, 5, 2.150, 'Kg', 12.80,  '2025-09-03'),

(2004, 4, 1.000, 'UN', 220.00, '2025-09-04'),
(2004, 6, 0.978, 'Kg', 35.00,  '2025-09-04'),
(2004, 1, 1.000, 'UN', 155.65, '2025-09-04'),
(2004, 7, 1.000, 'UN', 200.26, '2025-09-04'),
(2004,10,12.000, 'UN', 9.50,   '2025-09-04'),

(2005, 8, 0.750, 'Kg', 35.90,  '2025-09-05'),
(2005, 9, 1.000, 'UN', 90.85,  '2025-09-05'),
(2005, 2, 2.000, 'UN', 99.90,  '2025-09-05'),
(2005, 3, 0.720, 'Kg', 46.15,  '2025-09-05'),
(2005, 4, 2.000, 'UN', 218.50, '2025-09-05'),

(2006, 1, 3.000, 'UN', 150.55, '2025-09-06'),
(2006, 5, 3.784, 'Kg', 12.95,  '2025-09-06'),
(2006, 9, 1.000, 'UN', 90.85,  '2025-09-06'),
(2006,10, 8.000, 'UN', 9.10,   '2025-09-06'),

(2007, 7, 1.000, 'UN', 201.46, '2025-09-07'),
(2007, 6, 0.645, 'Kg', 38.90,  '2025-09-07'),
(2007, 8, 0.789, 'Kg', 33.45,  '2025-09-07'),
(2007, 2, 2.000, 'UN', 99.90,  '2025-09-07'),

(2008, 3, 0.225, 'Kg', 47.20,  '2025-09-08'),
(2008, 4, 1.000, 'UN', 217.50, '2025-09-08'),
(2008, 1, 1.000, 'UN', 158.10, '2025-09-08'),
(2008, 9, 2.000, 'UN', 92.85,  '2025-09-08'),

(2009, 5, 4.950, 'Kg', 13.10,  '2025-09-09'),
(2009,10,16.000, 'UN', 8.90,   '2025-09-09'),
(2009, 6, 0.745, 'Kg', 39.10,  '2025-09-09'),
(2009, 7, 2.000, 'UN', 201.46, '2025-09-09'),

(2010, 2, 1.000, 'UN', 99.90,  '2025-09-10'),
(2010, 3, 0.297, 'Kg', 47.20,  '2025-09-10'),

(2011, 8, 0.654, 'Kg', 31.50,  '2025-09-11'),
(2011, 9, 4.000, 'UN', 92.85,  '2025-09-11'),

(2012, 4, 2.000, 'UN', 215.20, '2025-09-12'),

(2013, 1, 2.000, 'UN', 158.10, '2025-09-13'),
(2014,10, 9.000, 'UN', 8.40,   '2025-09-14'),
(2015, 5, 2.560, 'Kg', 13.25,  '2025-09-15'),
(2016, 7, 1.000, 'UN', 203.45, '2025-09-16');

SELECT * FROM vendas_itens2;

SELECT
    venda_id,
    quantidade,
    valor_unitario,
    data_venda
FROM 
    vendas_itens2
WHERE
    produto_id = 1
   
   
    SELECT  venda_id, 
        SUM(valor_unitario) AS total_vendas
FROM vendas_itens
GROUP BY venda_id

SELECT 
        venda_id,
        produto_id,
        valor_unitario,
        valor_unitario * 1.10 AS taxa_venda
FROM
        vendas_itens
WHERE
        venda_id = 2001;

SELECT 
    produto_id,
    sum(quantidade) AS quantidade_total,
    unidade,
    ROUND(sum(valor_unitario * quantidade),3) AS valor_total,
    ROUND(sum(valor_unitario * quantidade) / sum(quantidade),3)AS media
FROM
    vendas_itens2
GROUP BY
    produto_id,
    unidade
ORDER BY
    produto_id ASC;

SELECT
    venda_id,
    sum(valor_unitario * quantidade) AS valor_final,
    data_venda
FROM
    vendas_itens2
GROUP BY
    venda_id,
    data_venda
ORDER BY
    venda_id ASC;

SELECT * FROM vendas_itens2;
