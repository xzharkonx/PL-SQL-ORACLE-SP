-- PL-SQL-ORACLE-SP

-- Esto es necesario para que nosotros podamos ver nuestros dbms_outputs
set serveroutput on;
    
-- Inicio
DECLARE
-- Definicion de funciones y variables.
-- Aqu� empieza nuestro c�digo.
BEGIN
-- Impresi�n en consola.
 dbms_output.put_line('Hola Mundo');
 dbms_output.put_line('Hola Luis');
 
END;
-- Fin del procedimiento.
-- Se pone tambi�n para indicar el fin del procedimiento. (si marca un error es porque el codigo necesita un cuerpo o algo que hacer).
/