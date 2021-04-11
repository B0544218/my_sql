use world;
select * from city;
#选出Countrycode 第三个字符是D的countrycode
select CountryCode from city where CountryCode like '__D%';

use Qadbtesting;
select * from employeeinfo order by id;
select * from employeeinfo order by id desc;

use demo;
select * from company;
select count(Branch) from company;
select branch, max(Employees) from company group by branch;
select avg(Employees) from company;
select branch, min(Employees) from company group by branch;
select sum(Employees) from company;

select branch, sum(Employees) from company group by branch having branch='Canada' or branch='China';

use demo;
select *from transactions group by month;

select count(*), month from transactions group by month having count(*)<2;
# 執行順序 join > where > group > having 
select sum(amount), month from transactions where branch = 'BeiJing' or branch = 'ShangHai' group by month having sum(amount)<1000;