
-- V1__create_table_vendedor.sql
CREATE TABLE IF NOT EXISTS vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL UNIQUE,
    cpf_cnpj VARCHAR(18) NOT NULL UNIQUE,
    status_aprovacao VARCHAR(20) NOT NULL DEFAULT 'PENDENTE',
    data_solicitacao DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
