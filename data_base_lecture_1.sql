show databases;
select * from world.city;
select count(*) from world.city;
select * from world.city where name = "Bangalore";

select * from world.city where name = "Patna";
select Name, Population from world.city where CountryCode = "IND";
select count(*) from world.city where CountryCode = "IND";
select sum(Population) from world.city where CountryCode = "IND";
select avg(Population) from world.city where CountryCode = "IND";
select min(Population), max(Population) from world.city where CountryCode = "IND";
#89053	10500000
select * from world.city where Population = 89053;
select * from world.city where Population = 10500000;
select count(distinct(CountryCode)) from world.city;
select CountryCode, min(Population), max(Population), count(*) cityCount 
from world.city group by CountryCode;
select CountryCode, District, count(*) from world.city group by CountryCode, District
