-- Clientes por cidade
select c.nome, c2.cidade as cidade
from cliente c
inner join end_cliente ec on c.id_end_cliente = ec.id_end_cli
inner join cidade c2 on ec.id_cidade = c2.id_cidade;

-- Vendas por cliente
select c.nome, v.id_venda, v.dt_venda, p.nome_produto, vp.qtd
from cliente c
inner join vendas v on v.id_cliente = c.id_cliente
inner join venda_produto vp on vp.id_venda = v.id_venda
inner join produtos p on p.id_prod = vp.id_produto;

--Sql com Join mais adequado para listar todos os produtos e categorias
select cp.categorias, p.nome_produto
from cat_prod cp 
left join produtos p on p.id_prod = cp.id_cat
order by p.nome_produto asc;

--Elaborar comandos sql p/ +3 relatórios gerenciais

--1 - Qual produto mais vendeu
select p.nome_produto, max(vp.qtd) 
from produtos p 
inner join venda_produto vp on vp.id_produto = p.id_prod 
group by p.nome_produto
limit 1;

--2 - Listar clientes por região 
select c.nome, c2.uf, c2.cidade 
from cliente c
inner join end_cliente ec on c.id_end_cliente = ec.id_end_cli
inner join cidade c2 on ec.id_cidade = c2.id_cidade and c2.uf = 'SC';

--3 - Qual o produto mais barato no estoque
select p.nome_produto, p.valor
from produtos p 
where p.valor = (select min(p2.valor) from produtos p2);