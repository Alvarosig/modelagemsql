INSERT INTO ecommerce.produtos (nome_produto,valor,qtd_estoque) VALUES
     ('cadeira',150.99,50),
     ('martelo',39.90,100),
     ('flor',25.00,20),
     ('pulseira ',500.00,5),
     ('ford ka',2.50,4),
     ('fruit ninja',14.90,80);

     
INSERT INTO ecommerce.telefone (telefone) VALUES
     ('48 9999-9999'),
     ('42 8888-8888');

     
INSERT INTO ecommerce.cat_prod (categorias) VALUES
     ('móveis'),
     ('ferramentas'),
     ('jardinagem'),
     ('automovel'),
     ('eletronico'),
     ('games'),
     ('eletrodoméstico'),
     ('roupas'),
     ('acessórios'),
     ('decoracao');

INSERT INTO ecommerce.cliente (nome,sexo,data_nasc,id_end_cliente) VALUES
     ('Richard Rasmussem','M','1978-12-12',5),
     ('Love','F','1984-10-10',6);

INSERT INTO ecommerce.cidade (cidade, uf) VALUES
     ('Laguna', 'SC'),
     ('Forquilinha', 'SC'),
     ('Rio de Janeiro', 'RJ'),
     ('São Paulo', 'RJ');

INSERT INTO ecommerce.vendas (dt_venda,id_cliente) VALUES
     ('2023-10-10',17),
     ('2020-06-12',18),
     ('2021-03-11',17);

     
INSERT INTO ecommerce.end_cliente (rua,bairro,cep,id_cidade) VALUES
     ('Rua do Tambõao','Magalhães','88790-000',1),
     ('Rua da Tijuca','Flamengo','51510-568',3);

     
INSERT INTO ecommerce.venda_produto (qtd) VALUES
     (10),
     (2),
     (5);
