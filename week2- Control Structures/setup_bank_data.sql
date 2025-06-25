-- Drop existing loans table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Loans';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

-- Drop existing customers table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Customers';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/


CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Age NUMBER,
    Balance NUMBER(10,2),
    IsVIP CHAR(1),  -- 'Y' for TRUE, 'N' for FALSE
    InterestRate NUMBER(5,2)
);


CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    DueDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers VALUES (101, 'Arun', 65, 15000.00, 'N', 9.5);
INSERT INTO Customers VALUES (102, 'Meena', 45, 8000.00, 'N', 10.0);
INSERT INTO Customers VALUES (103, 'Ravi', 70, 12000.00, 'N', 11.0);
INSERT INTO Customers VALUES (104, 'Divya', 30, 5000.00, 'N', 10.5);
INSERT INTO Customers VALUES (105, 'Kumar', 61, 20000.00, 'N', 8.0);


INSERT INTO Loans VALUES (201, 101, SYSDATE + 10);  -- Due in 10 days
INSERT INTO Loans VALUES (202, 102, SYSDATE + 35);  -- Due in 35 days
INSERT INTO Loans VALUES (203, 103, SYSDATE + 5);   -- Due in 5 days
INSERT INTO Loans VALUES (204, 104, SYSDATE + 29);  -- Due in 29 days


COMMIT;
