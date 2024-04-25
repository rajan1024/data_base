create table customers
(
Customers_Id int not null auto_increment,
Date date not null,
Customer_Name char(30) not null,
Amount decimal(10,2) not null,
Adress_Id int not null,
Category char(20) not null default '',
primary key (Customers_Id)
);
show databases;
drop table customers;
drop database test;
create database business;
use business;
select* from customers;
-- copy customers(customers_Id,Date,Customer_Name,Amount,Adress_Id,Category)
-- From 'C:/Users/91770/Desktop/rajan.txt'
-- DELIMETER','
-- CSV HEADER;
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/rajan.txt'
into table customers 
fields terminated by ''
lines terminated by '\n';

use business;
select * from customers;
SHOW VARIABLES LIKE "secure_file_priv";
show create table customers;
alter table customers modify column adress_id  char(200);
alter table customers drop column bill_no ;
