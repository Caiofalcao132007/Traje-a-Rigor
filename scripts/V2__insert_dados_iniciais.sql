-- V2__insert_dados_iniciais.sql
INSERT INTO usuario(nome,email,telefone,endereco)
VALUES
('João Silva','joao@email.com','69999999999','Rua A'),
('Maria Souza','maria@email.com','69988888888','Rua B'),
('Pedro Lima','pedro@email.com','69977777777','Rua C');

INSERT INTO vendedor(id_usuario,cpf_cnpj,status_aprovacao)
VALUES
(1,'11111111111','APROVADO'),
(3,'22222222222','PENDENTE');

INSERT INTO categoria(nome)
VALUES
('Camisetas'),
('Calças'),
('Vestidos'),
('Jaquetas');

INSERT INTO produto(nome,descricao,preco,estoque,id_categoria,id_vendedor)
VALUES
('Camiseta Preta','100% algodão',49.90,20,1,1),
('Calça Jeans Slim','Modelo moderno',129.90,15,2,1),
('Jaqueta Social','Jaqueta masculina',249.90,10,4,1);

INSERT INTO pedido(id_usuario,valor_total,status)
VALUES
(2,179.80,'PAGO');

INSERT INTO item_pedido(id_pedido,id_produto,quantidade,preco_unitario)
VALUES
(1,1,1,49.90),
(1,2,1,129.90);

INSERT INTO pagamento(id_pedido,metodo_pagamento,valor)
VALUES
(1,'PIX',179.80);

INSERT INTO entrega(id_pedido,codigo_rastreio,status_entrega,data_envio)
VALUES
(1,'BR123456789','EM TRANSITO',CURRENT_DATE);

