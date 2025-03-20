SELECT * FROM PAIS;

INSERT INTO PAIS VALUES (19, 'China');
COMMIT;

declare
    v_cod NUMBER:= '&cod';
    v_nom VARCHAR2(50):= '&pais';
begin
    INSERT INTO PAIS VALUES (v_cod, v_nom);
    commit;
end;



CREATE OR REPLACE PROCEDURE g_insert_pais(
    p_id_pais NUMBER,
    p_nome_pais VARCHAR2
) AS
BEGIN
    INSERT INTO PAIS VALUES (p_id_pais, p_nome_pais);
    commit;
end; 


CALL g_insert_pais(77, 'COSTA RICA');

BEGIN
g_insert_pais();
END;


CREATE OR REPLACE PROCEDURE g_update_pais(
    p_id_pais NUMBER,
    p_nome_pais VARCHAR2
) AS
BEGIN
    UPDATE PAIS SET NOM_PAIS = p_nome_pais WHERE COD_PAIS = p_id_pais;
    commit;
end; 

CALL g_update_pais(77, 'COSTA RICA UPDATE');


CREATE OR REPLACE PROCEDURE g_delete_pais(
    p_id_pais NUMBER
) AS
BEGIN
    DELETE FROM PAIS WHERE COD_PAIS = p_id_pais;
    commit;
end; 

CALL g_delete_pais(77);

select * from pais;

select * from pedido;
select * from produto;
select * from Cliente;

SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT
            a.cod_cliente AS "Codigo Cliente",
            b.nom_cliente AS "Nome Cliente",
            d.nom_produto AS "Produto",
            SUM(c.val_unitario_item) AS "Valor do Pedido"
        FROM
            pedido a
        INNER JOIN cliente b ON a.cod_cliente = b.cod_cliente
        INNER JOIN item_pedido c ON a.cod_pedido = c.cod_pedido
        INNER JOIN produto d ON c.cod_produto = d.cod_produto
        WHERE
            a.cod_cliente = 120
            AND d.nom_produto = 'Smartphone'
        GROUP BY
            a.cod_cliente, b.nom_cliente, d.nom_produto
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Codigo Cliente: ' || rec."Codigo Cliente" || ' | Nome Cliente: ' || rec."Nome Cliente" || ' | Produto: ' || rec."Produto" || ' | Valor do Pedido: ' || rec."Valor do Pedido");
    END LOOP;
END;