-- V5__create_view_produtos_vendedores.sql
CREATE OR REPLACE VIEW vw_produtos_vendedores AS
SELECT
    p.id_produto,
    p.nome AS produto,
    p.preco,
    u.nome AS vendedor
FROM produto p
JOIN vendedor v ON p.id_vendedor=v.id_vendedor
JOIN usuario u ON v.id_usuario=u.id_usuario;

