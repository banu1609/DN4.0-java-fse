DECLARE
    CURSOR cust_cursor IS
        SELECT CustomerID, InterestRate
        FROM Customers
        WHERE Age > 60;

BEGIN
    FOR cust_rec IN cust_cursor LOOP
        UPDATE Customers
        SET InterestRate = InterestRate - 1
        WHERE CustomerID = cust_rec.CustomerID;

        DBMS_OUTPUT.PUT_LINE('1% interest discount applied to Customer ID: ' || cust_rec.CustomerID);
    END LOOP;

    COMMIT;
END;
