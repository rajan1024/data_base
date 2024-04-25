select * from world.country;
select count(*) from world.country;
select * from world.country where Name = "India";
select avg(LifeExpectancy), avg(Population),min(Population), max(population), 
max(SurfaceArea) from world.country;
select * from world.country where Population = 1277558000;
select * from world.country where SurfaceArea = 17075400.00;
show databases;
show create table world.city;
show create table world.country;
select * from information_schema.TABLE_CONSTRAINTS where  CONSTRAINT_SCHEMA="world" 
and TABLE_NAME="city";
select * from world.country where IndepYear= -1523 ;
select sum(population) from world.country where Continent= "Asia";
select Continent, sum(population) from world.country group by Continent;
select LifeExpectancy, Continent, sum(population),count(*) from world.country 
group by LifeExpectancy, Continent;
insert world.city(Name, CountryCode) values("Jehanabad", "IND");
select * from world.city where Name= "Jehanabad" ; 
update world.city set District="Bihar",Population=11111 where ID=4081;
delete from world.city where ID= 4082;
select * from world.country;
insert world.country(Name) values("Kinjer");
update world.country set code ="KJR", Population=23456 where Code="";
select * from world.country where Name = "Kinjer";
insert world.city(name,countrycode) values("Rajabigha sahar","KJR");
select * from world.city where CountryCode = "KJR";
update   world.city set district="Bihardfghnjmk" where ID=4083;
