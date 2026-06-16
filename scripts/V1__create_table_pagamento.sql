-- V1__create_table_pagamento.sql
CREATE TABLE IF NOT EXISTS pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_pedido INT UNIQUE NOT NULL,
    metodo_pagamento VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

