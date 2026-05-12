SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION factorial(n IN INT)
RETURN INT
IS
    fact NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        fact:= fact*i;
    END LOOP;
    
    RETURN fact;
END;
/
DECLARE
    result INT;
BEGIN
     result:= factorial(5);
     
     DBMS_OUTPUT.PUT_LINE('Factorial = ' || result);
END;
/
