-- V1__create_table_pedido.sql
CREATE TABLE IF NOT EXISTS pedido (
    id_pedido SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    data_pedido DATE DEFAULT CURRENT_DATE,
    valor_total DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) DEFAULT 'PENDENTE',
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

