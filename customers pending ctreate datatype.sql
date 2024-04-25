show databases;
create database test;
create table test.customers 
( 
Id  int Not Null auto_increment,
Name varchar(50) Not Null,
Age int(3) Not Null,
City char(50),
salary numeric,
primary key(Id)
);
use test;
show tables;
insert test.customers( Name, Age,City,Salary)
values("Rajan", 26, "Jehanabad", 32000.00);
update test.customers set city = "Patna" where Id=1;
delete from test.customers where Id=1;
select * from test.customers;
insert test.customers( Name, Age,City,Salary)
values
("Raj", 23, "Jehanabad", 30000.00),
("Rahul", 21, "Jehanabad", 30000.00),
("Raju", 20, "Jehanabad", 30000.00),
("Arjun", 23, "Arwal", 20000.00);
select * From test.customers;
truncate table test.customers;
drop table test.customers;
select * from budget.expense;
insert budget.expense (date,PersonName,Amount,category,Description)
 values("2022-8-22", "Ramu", 200.07, "medicine","headache");
show databases;
select * from world.city;
select * from world.city where countrycode= "IND" and population > 731200 limit 8;
select * from world.city where countrycode= "IND" ORDER BY Name ASC limit 4;






