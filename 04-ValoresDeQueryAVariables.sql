-- PL-SQL-ORACLE-SP
-- Valores de Query a Variables.
-- Veremos como a travez de que traigamos datos con Querys podemos agregarlos a nuestros atributos.

-- SELECT * FROM dual;
-- SELECT COUNT(*) FROM dual;
-- Seleccioname algo y con FROM dual traemelo.
-- SELECT USER FROM dual;
-- SELECT USER, COUNT(*) FROM dual;

set serveroutput on;

DECLARE
    cantidad number;
    usuario nvarchar2(100);

BEGIN
    -- Seleccionamos el usuario actual.
    -- Con into le decimos que lo agregue/asigne/meta a nuestra variable usuario.
    -- Con FROM dual le decimos que nos lo traiga.
   
    -- SELECT user into usuario FROM dual;
    -- SELECT COUNT(*) into cantidad FROM dual;
    SELECT user, COUNT(*) into usuario, cantidad FROM dual;
    
    -- Imprimimos el resultado y veremos que nos trae nuestro usuario.
    -- Asi es como podemos traer nuestros datos.
    dbms_output.put_line('Usuario: ' || usuario);
    dbms_output.put_line('Cantidad: ' || cantidad);

END;
/