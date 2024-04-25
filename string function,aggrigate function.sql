select * from world.city;
select upper(Name) from world.city;
select lower(Name) from world.city;
select length(Name),Name from world.city;
select substring(Name,2,4),Name from world.city;
select substring(Name,2,4)from world.city;
select concat(Name,District)Name,District from world.city;
select replace(Name,'Kabul','kabool')Name from world.city;
select replace(Name,'Kabul','kabool')Name from world.city;
select round(avg(population),3) from world.city;
select * from world.city;
select district, SUM(population) as total from world.city 
group by District
order by total asc;
select replace(Name,'Kabul','kabool')Name from world.city;


select now();
select current_date();
select current_time();
 create database calender;
 create  table pages.calender
 ( page_no int not null auto_increment,
Date date not null,

primary key (page_no)
);
select * from calender.pages;
drop table pages


 





