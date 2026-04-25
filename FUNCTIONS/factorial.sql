CREATE OR REPLACE FUNCTION factorial(n IN NUMBER)
RETURN NUMBER
IS
    fact NUMBER := 1;
BEGIN 
    FOR i IN 1..n LOOP
        fact := fact * i;
    END LOOP;

    RETURN fact;  
END;
/

DECLARE 
    num NUMBER:=&num;
    result NUMBER;
BEGIN
    result := factorial(num);
    DBMS_OUTPUT.PUT_LINE('Factorial = ' || result);
END;
/
