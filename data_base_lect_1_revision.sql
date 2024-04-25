select * from world.city;
select count(*) from world.city where countrycode = "NLD";
select sum(Population) from world.city where countrycode = "IND";
select count(*) from world.city where countrycode = "IND";
select avg(Population) from world.city where countrycode = "IND";
select max(Population), min(Population) from world.city where countrycode = "IND";
#89053   10500000
select * from world.city where Population=89053 ;
select Name, CountryCode,Population from world.city where Population=89053 ;
select count(*) from world.city;
select countrycode, Population, Name from world.city
group by countrycode, Population,Name ;
select count(distinct(CountryCode)) from world.city;
select CountryCode, Name, count(*) from world.city group by CountryCode,Name;


