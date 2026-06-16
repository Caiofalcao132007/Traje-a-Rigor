-- V1__create_table_entrega.sql
CREATE TABLE IF NOT EXISTS entrega (
    id_entrega SERIAL PRIMARY KEY,
    id_pedido INT UNIQUE NOT NULL,
    codigo_rastreio VARCHAR(50) UNIQUE,
    status_entrega VARCHAR(30) DEFAULT 'PREPARANDO',
    data_envio DATE,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

