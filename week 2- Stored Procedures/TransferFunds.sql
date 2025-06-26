CREATE OR REPLACE PROCEDURE TransferFunds (
    from_account_id IN NUMBER,
    to_account_id IN NUMBER,
    amount IN NUMBER
) IS
    from_balance NUMBER;
BEGIN
    
    SELECT Balance INTO from_balance
    FROM Accounts
    WHERE AccountID = from_account_id;

   
    IF from_balance >= amount THEN
        -- Debit source account
        UPDATE Accounts
        SET Balance = Balance - amount
        WHERE AccountID = from_account_id;

        
        UPDATE Accounts
        SET Balance = Balance + amount
        WHERE AccountID = to_account_id;

        COMMIT;
    ELSE
        
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient balance in source account.');
    END IF;
END;
/
