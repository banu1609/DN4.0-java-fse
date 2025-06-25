BEGIN
  FOR rec IN (
    SELECT l.LoanID, l.DueDate, c.Name
    FROM Loans l
    JOIN Customers c ON l.CustomerID = c.CustomerID
    WHERE l.DueDate <= SYSDATE + 30 AND l.DueDate >= SYSDATE
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Reminder: Dear ' || rec.Name || 
                         ', your loan (ID: ' || rec.LoanID || 
                         ') is due on ' || TO_CHAR(rec.DueDate, 'DD-Mon-YYYY') || '.');
  END LOOP;
END;
