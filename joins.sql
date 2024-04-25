select* from budget.expense;
select* from business.customers;
use business;
create table transcation
(
Id int auto_increment not null,
Customer_id int  not null,
Product_id int not null,
Date datetime not null,
Price decimal(10,2),
primary key (Id)
);

select * from transcation;
insert transcation(customer_id,Product_id,Date,Price)
 values(1,103,'20240425',109);
 insert transcation(customer_id,Product_id,Date,Price)
 values(1,2,'20240420',303);
 insert transcation(customer_id,Product_id,Date,Price)
 values(1,1,'20240419',53);
 insert transcation(customer_id,Product_id,Date,Price)
 values(2,2,'20240423',207);
  insert transcation(customer_id,Product_id,Date,Price)
 values(2,20,'20240413',17);
  insert transcation(customer_id,Product_id,Date,Price)
 values(2,3,'20240425',27);
 -- delete from  transcation where Id=7;
insert transcation(customer_id,Product_id,Date,Price) values(3,2,'20240425',227);
insert transcation(customer_id,Product_id,Date,Price) values(21,3,'20240425',217);
insert transcation(customer_id,Product_id,Date,Price) values(21,1,'20240425',119);
insert transcation(customer_id,Product_id,Date,Price) values(20,23,'20240425',271);
insert transcation(customer_id,Product_id,Date,Price) values(20,13,'20240425',207);
 

-- customers
alter table customers drop column amount;
alter table customers drop column category;
alter table customers drop column adress_id;
alter table customers drop column date;
alter table customers add column DOB date ;
alter table customers add column Address char(200) ;

select * from customers;
-- truncate table customers;
insert customers(customers_id,Customer_Name,DOB,Address)
 values(1,'shailesh kumar','19941228','Bangalore');
 insert customers(customers_id,Customer_Name,DOB,Address)
 values(2,'Rajan','19970824','Bangalore');
 insert customers(Customer_Name,DOB,Address)
 values('shiva kumar','20080907','Dewahara');
  insert customers(Customer_Name,DOB,Address)
 values('Ladoo','20020807','Jehanabad');



create table Product
(
Product_id int not null ,
Name char(30),
Description char(100),
Inventory_count int,
primary key(Product_id)
);

insert product(Product_id,Name,Description,Inventory_count)
values(1,'fair&lovely','cream',20);
insert product(Product_id,Name,Description,Inventory_count)
values(2,'Horlics','Strong Protien',10);
insert product(Product_id,Name,Description,Inventory_count)
values(3,'Rice','creals',120);
select * from product;

-- inner join
select customer_name, product_id, price, date 
from transcation t, customers c
where t.customer_id = c.customers_id
and t.price > 200;

-- left join
select *
from transcation t left outer join customers c
on t.customer_id = c.customers_id;

-- right join
select *
from transcation t right outer join customers c
on t.customer_id = c.customers_id;


select customer_id, customer_name, price
from transcation t right outer join customers c
on t.customer_id = c.customers_id;

