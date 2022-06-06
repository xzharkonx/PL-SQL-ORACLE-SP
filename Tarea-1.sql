-- Venta de camisetas.
-- Declarar e inicializar las siguientes variables:
    -- Número de camisetas a vender.
    -- Monto de camisetas.
-- Calcular:
    -- Sub total a pagar = (Número de camisetas * Monto de camisetas).
    -- Calcular el 15% de impuesto sobre ventas.
    -- Total a pagar = SubTotal + Impuesto Sobre ventas.
    
set serveroutput on;

DECLARE
    numCamisetas number := 5;
    montoUnitario number := 19.99;
    
    subTotal number;
    tasaDeImpuesto number;
    impuesto number;
    totalPagar number;
    
BEGIN
    
    tasaDeImpuesto := 0.15;
    subTotal := (numCamisetas * montounitario);
    impuesto := subTotal * tasaDeImpuesto;
    totalPagar := (subTotal + impuesto);
   -- totalPagar := (ROUND(subTotal + impuesto, 2)); -- Redondeado.
    
    dbms_output.put_line('Sub Total a Pagar: ' || subTotal);
    dbms_output.put_line('Impuesto del: ' || impuesto || '%');
    dbms_output.put_line('Total a Pagar: ' || totalPagar);
    
END;
/