-- PL-SQL-ORACLE-SP

-- Esto es necesario para que nosotros podamos ver nuestros dbms_outputs
set serveroutput on;
    
-- Inicio
DECLARE

-- Definicion de funciones y variables.

    -- Capo de Tipo numero y asignamos un valor con := 
        -- Tambien podemos agregarle un parentesis con unos valores para saber el rango (enero,decimal).
        -- El primer numero entre parentesis sera la cuenta de todos los numeros.
        -- El segundo numero sera el valor de decimales que queremos que se tome de la cuenta de todos los numeros.
        -- Por ejemplo: 100.00. Son 5 numeros y 2 decimales, por lo tanto queda: number(5,2).
        -- Tambien puede llevar 'not null' (no permitir valores nulos).
        
    -- Campo de Tipo texto (Defenimos el tamanio del campo).
        -- Tambien puede llevar 'not null' (no permitir valores nulos).
        -- Tambien puede ser de tipo unico 'unique' (no permitir valores repetidos).
        
    -- Campo de Tipo Booleano (True or False).
        -- Tambien puede llevar 'not null' (no permitir valores nulos).
        
    -- Campo de Tipo fecha (dia-mes-anio)(01-01-1999).
        -- Con 'sysdate' tomara la fecha de la base de datos y la colocara ahi.
            -- fecha := sysdate;

        -- O bien una fecha entre "".
            -- Por ejemplo: "31-12-2022"
    
    salario number(8,2) not null := 28000.00;
    nombreEmpleado nvarchar2(100);
    activo boolean;
    fecha date;
    

-- Aquí empieza nuestro código.
BEGIN

-- Utilizamos las variables.
    
    nombreEmpleado := 'Luis Eduardo Garcia Mercado';
    activo := true;
    -- fecha := '31-12-2022';
    fecha := SYSDATE;    
    
    -- Impresión en consola.
    -- Para concatenar con ||
    -- Nombre: Luis Eduardo Garcia Mercado
    -- Salario: 1500
    dbms_output.put_line('Nombre: ' || nombreEmpleado);
    dbms_output.put_line('Salario: ' || salario);
    dbms_output.put_line('Fecha: ' || fecha);
    
    -- Para el caso del booleano es disitinto por que nos arrojaría un error
    -- en el tipo de dato al quererlo imprimir. 
    -- Asi que lo evaluamos primero y devolvemos una respuesta en string
    -- dependiendo su valor, es parecido al if del operador ternario pues es programacion funcional/declarativa.
    dbms_output.put_line('Activo: ' || CASE WHEN activo THEN 'Si' ELSE 'No' END);
    
END;
-- Fin del procedimiento.
-- Se pone también para indicar el fin del procedimiento. (si marca un error es porque el codigo necesita un cuerpo o algo que hacer).
/