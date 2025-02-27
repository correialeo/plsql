SET SERVEROUTPUT ON;

DECLARE

    sexo CHAR(1) := '&VALOR';

BEGIN
    if UPPER(sexo) = 'F' THEN
        dbms_output.PUT_LINE('FEMININO');
    elsif upper(sexo) = 'M' THEN
        dbms_output.PUT_LINE('MASCULINO');
    else
        dbms_output.PUT_LINE('OUTROS');
    end if;
END;


DECLARE
    numero NUMBER := '&valor';
BEGIN
    if mod(numero, 2) = 0 THEN
        dbms_output.PUT_LINE(numero||' é par');
    else
        dbms_output.PUT_LINE(numero||' é impar');
    end if;
END;


DECLARE
    valor number := '&VALOR_CARRO';
    valorFinanciado number;
    numParcelas number := '&valor';
BEGIN
    valorFinanciado := valor * 0.80;
    if numParcelas = 6 then
        dbms_output.put_line('O valor parcelado do carro em 6x  é de: ' ||(valorFinanciado * 1.10) / 10);
    elsif numParcelas = 12 then
        dbms_output.put_line('O valor parcelado do carro em 12x  é de: ' ||(valorFinanciado * 1.15) / 10);
    elsif numParcelas = 18 then
        dbms_output.put_line('O valor parcelado do carro em 18x  é de: ' ||(valorFinanciado * 1.20) / 10);
    else
        dbms_output.put_line('Quantidades de parcelas nao aceitas');
    end if;
END;


DECLARE
    nota NUMBER := '&VALOR';
BEGIN
    if nota >= 8 and nota <=10 then
        dbms_output.put_line('ACIMA DA MEDIA');
    elsif nota >= 6 and nota < 8 then
        dbms_output.put_line('nA MEDIA');
    else
        dbms_output.put_line('reprovado');
    end if;
END;


CREATE TABLE ALUNO(RA CHAR(9), NOME VARCHAR2(50), CONSTRAINT ALUNO_PK PRIMARY KEY(RA));


INSERT INTO ALUNO (RA, NOME) VALUES ('111222333', 'Antonio');
INSERT INTO ALUNO (RA, NOME) VALUES ('222333444', 'Ana');
INSERT INTO ALUNO (RA, NOME) VALUES ('444555666', 'Ancelmo');
COMMIT;


select * from aluno;


DECLARE
    ra CHAR(9) := '555666777';
    nome VARCHAR2(50) := 'Amir';
BEGIN
    INSERT INTO ALUNO(RA, NOME) VALUES (ra, nome);
END;


DECLARE
    v_ra CHAR(9) := '555666777';
    v_nome VARCHAR(50);
BEGIN
    SELECT NOME INTO v_nome FROM ALUNO WHERE RA = v_ra;
    dbms_output.put_line('O nome do aluno é '|| v_nome);
END;


DECLARE
    v_ra CHAR(9) := '555666777';
    v_nome VARCHAR2(50) := 'Amir Updated';
BEGIN
    UPDATE ALUNO SET NOME = v_nome WHERE RA = v_ra ;
END;


select * from ALUNO;

/* */

declare
    v_ra char(9) := '555666777';
begin
    delete from ALUNO where ra = v_ra;
end;


SELECT * FROM VENDAS;

declare
    pais VARCHAR2(30) := '&valor';
    quantidadeVendas number;
begin
    SELECT 
        COUNT(1), COUNTRY 
        INTO quantidadeVendas, pais 
        FROM VENDAS 
        WHERE COUNTRY = pais 
        GROUP BY COUNTRY;
    dbms_output.put_line('A quantidade de vendas é de ' || quantidadeVendas);
end;