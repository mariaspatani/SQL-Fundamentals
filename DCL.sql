/*
GRANT privilege_name
ON table_name
TO user_name;*/
GRANT SELECT, INSERT
ON Employees
TO user1;
/*REVOKE privilege_name
ON table_name
FROM user_name;
*/
REVOKE INSERT
ON Employees
FROM user1;

