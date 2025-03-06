
INSERT INTO pais SELECT * FROM pf1788.pais; COMMIT;
INSERT INTO tipo_movimento_estoque SELECT * FROM pf1788.tipo_movimento_estoque; COMMIT;
INSERT INTO estoque SELECT * FROM pf1788.estoque; COMMIT;
 
INSERT INTO estado SELECT * FROM pf1788.estado; COMMIT;
 
ALTER TABLE cidade MODIFY NOM_CIDADE VARCHAR2(30);
INSERT INTO cidade SELECT * FROM pf1788.cidade; COMMIT;
 
INSERT INTO tipo_endereco SELECT * FROM pf1788.tipo_endereco; COMMIT;
INSERT INTO cliente SELECT * FROM pf1788.cliente; COMMIT;
 
INSERT INTO endereco_cliente SELECT * FROM pf1788.endereco_cliente; COMMIT;
 
INSERT INTO vendedor SELECT * FROM pf1788.vendedor; COMMIT;
INSERT INTO cliente_vendedor SELECT * FROM pf1788.cliente_vendedor; COMMIT;
 
INSERT INTO usuario SELECT * FROM pf1788.usuario; COMMIT;
 
SELECT * FROM PF1788.PEDIDO;
ALTER TABLE PEDIDO ADD STATUS VARCHAR2(30);
INSERT INTO pedido SELECT * FROM pf1788.pedido; COMMIT;
 
INSERT INTO produto SELECT * FROM pf1788.produto; COMMIT;
 
INSERT INTO estoque_produto SELECT * FROM pf1788.estoque_produto; COMMIT;
 
INSERT INTO movimento_estoque SELECT * FROM pf1788.movimento_estoque; COMMIT;
 
INSERT INTO item_pedido SELECT * FROM pf1788.item_pedido; COMMIT;
 
INSERT INTO historico_pedido SELECT * FROM pf1788.historico_pedido; COMMIT;
 
INSERT INTO produto_composto SELECT * FROM pf1788.produto_composto; COMMIT;
 
 
select * from estoque_produto;