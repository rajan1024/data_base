show databases;
create database budget;
create table budget.Expense (
ID int not null 									,
Date date not null,
PersonName char(30) not null,
Amount decimal(10,2) not null,
Category char(20) not null default '',
Description char(80) not null default '',
primary key (ID)
); 
use budget;
show tables;
insert budget.expense(Date, PersonName, Amount, Category, Description) 
values("20240420", "Rajan Kumari", 100.87, "Shopping", "Lehanga");
select * from expense;
