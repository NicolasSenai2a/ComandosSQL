CREATE TABLE  produtos (
	id serial primary key,
	item VARCHAR(100) not null,
	qtd_estoque int,
	cu_unitario decimal(10, 2)
)

INSERT INTO produtos (item, qtd_esatoque, cu_unitario)
	VALUES
	('MXRF11', 50, 10.50),
	('CPFF11', 40, 8.90),
	('Tesouro Selic', 3, 1.200),
	('Tesouro IPCA', 2, 1.500),
	('PETR4', 20, 38.50),
	('VALU3', 15, 65.00),
	('ITUB4', 25, 32.00)

SELECT
	item,
	qtd_esatoque,
	cu_unitario,
	(qtd_esatoque * cu_unitario) AS valor_final
	FROM produtos
	