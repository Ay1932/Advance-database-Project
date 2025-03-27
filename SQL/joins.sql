SELECT 
    c.customer_id, 
    c.customer_firstname, 
    c.customer_lastname, 
    c.customer_emailid, 
    a.account_id, 
    a.account_number, 
    a.account_type, 
    a.account_balance
FROM customers c
JOIN account a ON c.customer_id = a.customer_id;


SELECT 
    a.account_id, 
    a.account_number, 
    a.account_type, 
    fd.id AS fixed_deposit_id, 
    fd.principalAmount, 
    fd.interestRate, 
    fd.tenure, 
    fd.maturityAmount, 
    fd.status
FROM account a
JOIN fixeddeposit fd ON a.account_id = fd.account_id;



SELECT 
    s.support_id, 
    s.support_title, 
    s.support_status, 
    a.account_id, 
    a.account_number, 
    c.customer_id, 
    c.customer_firstname, 
    c.customer_lastname
FROM support s
JOIN account a ON s.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id;
