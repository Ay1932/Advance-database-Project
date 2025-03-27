UPDATE customers 
SET customer_mobile = '+4917663116999' 
WHERE customer_emailid = 'yatik@gmail.com';

select * from customers;


UPDATE account 
SET account_status = 'Active' 
WHERE account_number = 'DE1000000003';

UPDATE support 
SET support_status = 'Resolved' 
WHERE support_id = 3;

UPDATE transactions 
SET transaction_remark = 'payment delayed' 
WHERE transaction_id = 'TXN10002';

UPDATE fixeddeposit 
SET status = 'Closed' 
WHERE id = 4;

DELETE FROM transactions 
WHERE transaction_id = 'TXN10005';
