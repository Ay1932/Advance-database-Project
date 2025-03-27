INSERT INTO customers (customer_firstname, customer_lastname, customer_emailid, customer_password, customer_mobile, customer_dob, customer_address, customer_postcode, customer_country)
VALUES ('Yatik', 'Anghan', 'yatik@gmail.com', 'password123', '+4917663116950', '2003-08-08', '09 Bornimer St, Berlin', '10711', 'Germany');

INSERT INTO customers (customer_firstname, customer_lastname, customer_emailid, customer_password, customer_mobile, customer_dob, customer_address, customer_postcode, customer_country)
VALUES ('Mayank', 'Dobariya', 'mayank@gmail.com', 'password123', '+4917663116951', '2001-05-08', '456 Park Ave, Munich', '80331', 'Germany');

INSERT INTO customers (customer_firstname, customer_lastname, customer_emailid, customer_password, customer_mobile, customer_dob, customer_address, customer_postcode, customer_country)
VALUES ('Ayush', 'Pandav', 'ayush@gmail.com', 'password123', '+4917663116952', '2003-08-07', '789 Elm St, Hamburg', '20095', 'Germany');

INSERT INTO customers (customer_firstname, customer_lastname, customer_emailid, customer_password, customer_mobile, customer_dob, customer_address, customer_postcode, customer_country)
VALUES ('Bansi', 'Sonani', 'bansi@gmail.com', 'password123', '+4917663116953', '2001-03-25', '321 Birch St, Frankfurt', '60311', 'Germany');

INSERT INTO customers (customer_firstname, customer_lastname, customer_emailid, customer_password, customer_mobile, customer_dob, customer_address, customer_postcode, customer_country)
VALUES ('Pavan', 'Goti', 'pavan@gmail.com', 'password123', '+4917663116954', '2002-01-12', '987 Oak St, Stuttgart', '70173', 'Germany');

-- Account Table
INSERT INTO account (customer_id, account_number, account_type, account_balance, account_status)
VALUES (1, 'DE1000000001', 'Savings', '5000', 'Active');

INSERT INTO account (customer_id, account_number, account_type, account_balance, account_status)
VALUES (2, 'DE1000000002', 'Current', '10000', 'Active');

INSERT INTO account (customer_id, account_number, account_type, account_balance, account_status)
VALUES (3, 'DE1000000003', 'Savings', '7500', 'Deactive');

INSERT INTO account (customer_id, account_number, account_type, account_balance, account_status)
VALUES (4, 'DE1000000004', 'Current', '2000', 'Pending');

INSERT INTO account (customer_id, account_number, account_type, account_balance, account_status)
VALUES (5, 'DE1000000005', 'Savings', '15000', 'Closed');

-- Admin insert data
Insert into admin (admin_emailid,admin_password,admin_name,admin_role,admin_status) values("admin@gmail.com","admin123","Yatik Anghan","Admin","Active");
Insert into admin (admin_emailid,admin_password,admin_name,admin_role,admin_status) values("mayank@gmail.com","admin123","Mayank Dobariya","Casher","Active");
Insert into admin (admin_emailid,admin_password,admin_name,admin_role,admin_status) values("ayush@gmail.com","admin123","Ayush Pandav","Support","Active");

 -- Support Table
INSERT INTO support (customer_id, account_id, support_title, support_desc, support_status)
VALUES (1, 1, "Login Issue", "Customer is unable to log in to their account.", "Pending");

INSERT INTO support (customer_id, account_id, support_title, support_desc, support_status)
VALUES (2, 2, "Transaction Failure", "A recent transaction failed, and the amount was deducted.", "Resolved");

INSERT INTO support (customer_id, account_id, support_title, support_desc, support_status)
VALUES (3, 3, "Account Reactivation", "Request to reactivate a deactivated savings account.", "Pending");

INSERT INTO support (customer_id, account_id, support_title, support_desc, support_status)
VALUES (4, 4, "Wrong Account Details", "The account details displayed are incorrect.", "Resolved");

-- Transaction Table

INSERT INTO transactions (transaction_id, sender_account, receiver_account, transaction_amount, transaction_type, transaction_remark)
VALUES ('TXN10001', 'DE1000000001', 'DE1000000002', 1500, 'Transfer', 'Fund transfer to Mayank Dobariya');

INSERT INTO transactions (transaction_id, sender_account, receiver_account, transaction_amount, transaction_type, transaction_remark)
VALUES ('TXN10002', 'DE1000000002', 'DE1000000003', 2000, 'Transfer', 'Payment for services');

INSERT INTO transactions (transaction_id, sender_account, receiver_account, transaction_amount, transaction_type, transaction_remark)
VALUES ('TXN10003', 'DE1000000003', 'DE1000000004', 500, 'Transfer', 'Bill payment');

INSERT INTO transactions (transaction_id, sender_account, receiver_account, transaction_amount, transaction_type, transaction_remark)
VALUES ('TXN10004', 'DE1000000004', 'DE1000000005', 10000, 'Deposit', 'Fixed deposit investment');

INSERT INTO transactions (transaction_id, sender_account, receiver_account, transaction_amount, transaction_type, transaction_remark)
VALUES ('TXN10005', 'DE1000000005', 'DE1000000001', 3000, 'Withdrawal', 'Cash withdrawal from savings account');

-- Fixed Deposit

INSERT INTO fixeddeposit (account_id, principalAmount, interestRate, tenure, startDate, maturityDate, maturityAmount, status)
VALUES (1, 5000, 5.5, 12, '2024-03-01', '2025-03-01', 5300, 'Active');

INSERT INTO fixeddeposit (account_id, principalAmount, interestRate, tenure, startDate, maturityDate, maturityAmount, status)
VALUES (2, 10000, 6.0, 24, '2023-06-15', '2025-06-15', 11200, 'Active');

INSERT INTO fixeddeposit (account_id, principalAmount, interestRate, tenure, startDate, maturityDate, maturityAmount, status)
VALUES (3, 7500, 5.8, 18, '2024-01-10', '2025-07-10', 7950, 'Active');

INSERT INTO fixeddeposit (account_id, principalAmount, interestRate, tenure, startDate, maturityDate, maturityAmount, status)
VALUES (4, 2000, 4.5, 12, '2024-05-20', '2025-05-20', 2090, 'Closed');

INSERT INTO fixeddeposit (account_id, principalAmount, interestRate, tenure, startDate, maturityDate, maturityAmount, status)
VALUES (5, 15000, 6.2, 36, '2022-11-01', '2025-11-01', 17900, 'Active');
