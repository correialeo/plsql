SET SERVEROUTPUT ON;

DECLARE
    v_contador NUMBER := 1;
BEGIN
    LOOP
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
        EXIT WHEN v_contador > 20;
    END LOOP;
END;

DECLARE
    v_contador NUMBER := 1;
BEGIN
    WHILE v_contador <= 20 LOOP
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
    END LOOP;
END;

DECLARE
    v_contador NUMBER := 1;
BEGIN
    FOR v_contador IN 1..20 LOOP
        dbms_output.put_line(v_contador);
    END LOOP;
END;

DECLARE BEGIN
    FOR tabuada IN 1..10 LOOP
        dbms_output.put_line(tabuada * 4);
    END LOOP;
END;

DECLARE
    impar NUMBER := 0;
    par   NUMBER := 0;
BEGIN
    FOR x IN 1..1347 LOOP
        IF MOD(x, 2) = 0 THEN
            impar := impar + 1;
        ELSE
            par := par + 1;
        END IF;
    END LOOP;

    dbms_output.put_line('Impares: ' || impar);
    dbms_output.put_line('Par: ' || par);
END;

DECLARE
    impar      NUMBER := 0;
    soma_impar NUMBER := 0;
    par        NUMBER := 0;
    soma_par   NUMBER := 0;
    media      NUMBER;
BEGIN
    FOR x IN 1..100 LOOP
        IF MOD(x, 2) = 0 THEN
            soma_par := soma_par + x;
            impar := impar + 1;
        ELSE
            soma_impar := soma_impar + x;
            par := par + 1;
        END IF;
    END LOOP;

    media := soma_par / par;
    dbms_output.put_line('Soma Impares: ' || soma_impar);
    dbms_output.put_line('Media Par: ' || media);
END;