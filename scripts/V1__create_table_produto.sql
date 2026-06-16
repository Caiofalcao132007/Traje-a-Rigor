
-- V1__create_table_produto.sql
CREATE TABLE IF NOT EXISTS produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL CHECK (estoque >= 0),
    id_categoria INT NOT NULL,
    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

