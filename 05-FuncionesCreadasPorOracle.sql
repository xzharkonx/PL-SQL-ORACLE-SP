-- PL-SQL-ORACLE-SP
-- Funciones creadas por Oracle. Recuerda, es keysensitive.

-- Funciones con Textos o variables String.
-- length() -- Para saber el largo del caracter.
-- trim() -- Quita los espacios del principio y al final.
-- lower -- Caracteres a May�sculas
-- upper -- Caracteres a Min�sculas.
-- substr-- La cadena que le pasemos la cortar� desde donde le indiquemos empezando por 1 hasta los n caracteres que tenga.
-- replace -- La cadena que le pasemos la cortar� desde donde le indiquemos empezando por el valor que coicida en el primer argumento
                  -- por el segundo argumento que le pasemos. Pueden ser cadenas de caracteres.
                  

set serveroutput on;

DECLARE

    nombre nvarchar2(100) := 'Luis ';
    apellido nvarchar2(100) := 'Garcia';
    nombreCompleto nvarchar2(200) ;
    hoy date := sysdate;
    
    -- Valores nulos
    nombre2 nvarchar2(100);

BEGIN

    nombreCompleto := nombre || ' ' || apellido;

-- Funciones con Textos o variables String.
    dbms_output.put_line('Largo: ' ||  length(nombre));
    dbms_output.put_line('Trim: ' ||  trim(nombre));
    dbms_output.put_line('Minusculas: ' ||  lower(nombre));
    dbms_output.put_line('Mayusculas: ' ||  upper(nombre));
    dbms_output.put_line('Cortar: ' ||  substr(nombre, 2, 4));
    dbms_output.put_line('Reemplazo: ' ||  replace(nombre, 'u', 'o'));
    dbms_output.put_line('Reemplazo-Vaciando: ' ||  replace(nombre, 'Lui', ''));  -- Le reemplazamos eso por nada.
    
-- NVL 
    -- dbms_output.put_line('NVL: ' ||  nombre2); -- No nos mostrar� nada por que no est� declarado y es nulo.
    dbms_output.put_line('NVL: ' ||  NVL(nombre2, 'Es nulo')); --- Si es nulo sustituir� con el otro valor la informaci�n (siempre y cuando sea el mismo tipo).
    
-- Funciones de fecha
    dbms_output.put_line('Hoy: ' ||  hoy);
    dbms_output.put_line('Agregar Mes: ' ||  add_months(hoy, 1));
    dbms_output.put_line('Agregar D�a: ' || (hoy + 1));
    
-- Con to_char cuando queremos convertir algo a tipo texto.
    dbms_output.put_line('D�a: ' ||  to_char(hoy,  'dd'));
    dbms_output.put_line('D�a y Mes: ' ||  to_char(hoy,  'dd-MM'));
    dbms_output.put_line('A�o: ' ||  to_char(hoy,  'yyyy')); -- A cuatro d�gitos.
    dbms_output.put_line('Fecha completa: ' || to_char(hoy, 'dd-MM-yyyy')); -- Mira como sale separada por - en vez de /.

END;
/