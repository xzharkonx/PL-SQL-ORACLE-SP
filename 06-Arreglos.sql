-- PL-SQL-ORACLE-SP
-- Arreglos
-- Definiremos un tipo de dato seguido de cuantos elementos y luego de que tipo son.

set serveroutput on;

DECLARE

    -- Crear el tipo de dato (Arreglo).
    -- Declaramos el tipo (como si fueran intervaces de TypeScript).
    -- Recuerda poner y utilizar bien el tama�o para la cantidad de elementos si no tirar� error.
    -- Recuerda poner y utilizar bien el tama�o de caracteres o variaciones para este campo.
    type alumnosArray is varray(6) of nvarchar2(100);
    type notasArray is varray(6) of number;
    
    -- Para utilizar ese arreglo necesitamos crear una variable del tipo que acabamos de crear.
    -- Est�s es la �nica diferencia con respecto al PL-SQL.
    
    -- Utilizamos los arreglos.
    -- alumnos que es del tipo alumnosArray y as� iremos declarando las variables.
    alumnos alumnosArray;
    notas notasArray;

BEGIN

    -- Ahora utilizaremos esos arreglos.
    -- Podemos inicializar nuestro arreglo de la siguiente manera agregando el contenido.
    alumnos := alumnosArray('Luis', 'Melissa', 'Andrea', 'Antonio', 'Clarissa', 'Fernando');
    notas := notasArray(90, 100, 95, 89, 75, 80);

    -- Aqu� en PL-SQL Los arreglos inician desde la posici�n 1.
    dbms_output.put_line( alumnos(1) );
    dbms_output.put_line( alumnos(2) );
    dbms_output.put_line( alumnos(3) );

    dbms_output.put_line( notas(1) );
    -- dbms_output.put_line( notas(2) );
    -- dbms_output.put_line( notas(3) );
    
    notas(1) := 98;
    dbms_output.put_line( notas(1) );
    
END;
/