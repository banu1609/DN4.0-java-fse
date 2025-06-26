DECLARE
  v_count NUMBER := 0;
  v_result VARCHAR2(100);
BEGIN
  UPDATE Accounts
  SET Balance = Balance + (Balance * 0.01)
  WHERE AccountType = 'SAVINGS';

  v_count := SQL%ROWCOUNT;

  v_result := v_count || ' savings accounts updated with 1% interest.';
  DBMS_OUTPUT.PUT_LINE(v_result); 
  
END;
/
