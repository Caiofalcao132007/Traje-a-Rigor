-- V3__update_dados.sql
UPDATE vendedor
SET status_aprovacao='APROVADO'
WHERE id_vendedor=2;

UPDATE produto
SET estoque=estoque-1
WHERE id_produto=1;

