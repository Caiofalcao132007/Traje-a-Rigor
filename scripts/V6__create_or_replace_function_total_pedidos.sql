-- V6__create_or_replace_function_total_pedidos.sql
CREATE OR REPLACE FUNCTION total_pedidos_usuario(
    p_id_usuario INT
)
RETURNS INT
AS $$
DECLARE
    total INT;
BEGIN
    SELECT COUNT(*)
    INTO total
    FROM pedido
    WHERE id_usuario=p_id_usuario;

    RETURN total;
END;
$$ LANGUAGE plpgsql;