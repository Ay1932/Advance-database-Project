create schema banking_management;
use banking_management;


create table customers(
customer_id int auto_increment primary key,
customer_firstname varchar(50) not null,
customer_lastname varchar(50) not null,
customer_emailid varchar(60) unique not null,
customer_password varchar(60) not null,
customer_mobile varchar(17) not null,
customer_dob varchar(30) not null,
customer_address varchar(60) not null,
customer_postcode varchar(10) not null,
customer_country varchar(50) not null
);

create table account(
account_id int auto_increment primary key,
customer_id int,
account_number varchar(50) unique not null,
account_type varchar(50) not null,
account_balance varchar(50) not null,
account_status varchar(50) not null,
account_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id));	

create table admin(
admin_id int auto_increment primary key,
admin_emailid varchar(50) unique not null,
admin_password varchar(50) not null,
admin_name varchar(50) not null,
admin_role varchar(50) not null,
admin_status varchar(50) not null,
admin_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table support(
support_id int auto_increment primary key,
customer_id int,
account_id int,
support_title varchar(60) not null,
support_desc varchar(500) not null,
support_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
admin_id int,
support_status varchar(50) not null,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (account_id) REFERENCES account(account_id),
FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
);

CREATE TABLE transactions (
    t_id int AUTO_INCREMENT PRIMARY KEY,
    transaction_id VARCHAR(50) NOT NULL UNIQUE,
    sender_account VARCHAR(20) default "NA",
    receiver_account VARCHAR(20) default "NA",
    transaction_amount int NOT NULL,
    transaction_type varchar(50) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    admin_id int,
    transaction_remark TEXT,
    FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
);

CREATE TABLE fixeddeposit (
	id int auto_increment PRIMARY KEY,
    account_id INT NOT NULL,
    principalAmount DOUBLE NOT NULL,
    interestRate DOUBLE NOT NULL,
    tenure INT NOT NULL,
    startDate DATE NOT NULL,
    maturityDate DATE NOT NULL,
    maturityAmount DOUBLE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (account_id) REFERENCES account(account_id)
);


