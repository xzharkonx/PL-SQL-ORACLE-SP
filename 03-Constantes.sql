-- PL-SQL-ORACLE-SP
-- Constantes
-- Son usadas para datos que no cambian.
-- Usados como para catalogos o variables globales.
-- Esto es necesario para que nosotros podamos ver nuestros dbms_outputs
set serveroutput on;
    
DECLARE
    -- Constantes.
    PI CONSTANT number := 3.141559;
    
    -- Variables.
    area number;
    radio number;
    
BEGIN
    
    -- Les damos un valor, ya dependerá de nosotros.
    radio := 6;
    area := PI * ( radio * radio);
    
    -- function round()
    -- Con la funcion round() Limpiamos los decimales y redondeará hacia arriba si su valor es mayor a .5 si no hacia abajo.
    -- Agregar y redondear decimales hacia arriba: round(valor_area, numero_de_decimales_a_redondear_hacia_arriba).
    
    dbms_output.put_line('Area: ' || area || 'cm2');
    dbms_output.put_line('Area: ' || round(area, 2) || 'cm2');
    dbms_output.put_line('Area: ' || round(area) || 'cm2');
END;
/