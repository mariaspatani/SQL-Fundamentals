SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION checkeven(n IN NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF MOD(n,2)=0 THEN
        RETURN 'even';
    ELSE
        RETURN 'odd';
    END IF;
END;
/

DECLARE
    result VARCHAR2(50);
BEGIN
    result := checkeven(5);

    DBMS_OUTPUT.PUT_LINE(result);
END;
/
