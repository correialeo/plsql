select * from pf1788.PAIS;

select * from pf1788.PAIS a INNER JOIN PF1788.ESTADO b
ON (a.cod_pais = b.cod_pais);

select * from pf1788.PAIS a LEFT JOIN PF1788.ESTADO b
ON (a.cod_pais = b.cod_pais);

SELECT nom_pais, count(NOM_ESTADO) 
FROM pf1788.PAIS a LEFT JOIN PF1788.ESTADO b
ON (a.cod_pais = b.cod_pais)
GROUP BY
    a.nom_pais
    HAVING count(NOM_ESTADO) > 0
ORDER BY
    2;
    
select * from pf1788.PAIS a 
LEFT JOIN PF1788.ESTADO b 
ON (a.cod_pais = b.cod_pais)
INNER JOIN PF1788.CIDADE c
ON (b.cod_estado = c.cod_estado)
ORDER BY 3;

SET SERVEROUTPUT ON;

DECLARE
idade NUMBER;
nome VARCHAR(30) :='Leandro';
endereco VARCHAR2(50) := '&DIGITE_ENDERECO';

BEGIN

idade := 19;

dbms_output.put_line('a idade informada é: ' ||idade);
dbms_output.put_line('o nome informado é: ' ||nome);
dbms_output.put_line('o endereco informado é: ' ||endereco);


END;


DECLARE
salario number := 1500;
    
BEGIN

dbms_output.put_line('O novo salário mínimo é de: ' ||salario * 1.25 );

END;



DECLARE
dolar number:= 45;
cambio number:= 6;
reais number;

BEGIN
reais := dolar * cambio;
dbms_output.put_line('45 dólares é igual a: ' || reais);

END;


DECLARE
valor number := '&VALOR_CARRO';
valorFinanciado number;
valorParcela number;

BEGIN
valorFinanciado := valor * 1.03;
valorParcela := valorFinanciado / 10;

dbms_output.put_line('O valor parcelado do carro é de: ' ||valorParcela);

END;



DECLARE
valor number := '&VALOR_CARRO';
valorFinanciado number;

BEGIN
valorFinanciado := valor * 0.80;

dbms_output.put_line('O valor parcelado do carro em 6x  é de: ' ||(valorFinanciado * 1.10) / 10);
dbms_output.put_line('O valor parcelado do carro em 12x  é de: ' ||(valorFinanciado * 1.15) / 10);
dbms_output.put_line('O valor parcelado do carro em 18x  é de: ' ||(valorFinanciado * 1.20) / 10);

END;


DECLARE
    sexo CHAR := '&SEXO';
BEGIN

    if sexo = 'M' 
        then dbms_output.put_line('O sexo é masculino');
    elsif sexo = 'F' 
        then dbms_output.put_line('O sexo é feminino');
    else
        dbms_output.put_line('O sexo é outros');
    END IF;
END;



