BEGIN
    
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE Accounts';
    EXCEPTION
        WHEN OTHERS THEN NULL;
    END;

    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE Employees';
    EXCEPTION
        WHEN OTHERS THEN NULL;
    END;

    
    EXECUTE IMMEDIATE '
        CREATE TABLE Accounts (
            AccountID NUMBER PRIMARY KEY,
            AccountType VARCHAR2(20),
            Balance NUMBER
        )
    ';

   INSERT INTO Accounts VALUES (1001, 'SAVINGS', 10000);
   INSERT INTO Accounts VALUES (1002, 'SAVINGS', 20000);
   INSERT INTO Accounts VALUES (1003, 'CURRENT', 15000);
   INSERT INTO Accounts VALUES (1004, 'SAVINGS', 30000);

    
    EXECUTE IMMEDIATE '
        CREATE TABLE Employees (
            EmployeeID NUMBER PRIMARY KEY,
            DepartmentID NUMBER,
            Salary NUMBER
        )
    ';

    
    INSERT INTO Employees VALUES (1, 10, 30000);
    INSERT INTO Employees VALUES (2, 10, 40000);
    INSERT INTO Employees VALUES (3, 20, 50000);
;

    COMMIT;
END;
/
