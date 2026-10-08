create database jofin;
use jofin;
SET SERVEROUTPUT ON;
CREATE TABLE Employee20 (
    Employee_ID NUMBER(5) PRIMARY KEY,
    Employee_Name VARCHAR2(30),
    Salary NUMBER(10)
);
CREATE OR REPLACE TRIGGER Employee_Trigger20
AFTER INSERT ON Employee20
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Employee record inserted successfully'
    );
END;
/
INSERT INTO Employee20
VALUES (101, 'Ravi', 25000);
COMMIT;
SELECT * FROM Employee20;
