use Qadbtesting;
select department,age from employeeinfo;
select * from employeeinfo;
# 取employeeinfo表里的唯一的名字
select distinct name from employeeinfo;
insert into employeeinfo values('Lucy', 5, 'hangzhou' , 25,'HR');
select name from employeeinfo where location='Shanghai';

#location是上shanghai，年龄大于20的员工
select name from employeeinfo where location='Shanghai' and age>20;

#来自北京的员工，年龄小于21，或者来自广州的员工
select name from employeeinfo where (location='Beijing' and age<21) or location='guangzhou';
select name from employeeinfo where id=2 or location ='Beijing';

#打印年龄在23到25之间的员工的名字
select name from employeeinfo where age in(22,23,24,25);
select name from employeeinfo where location in('Beijing','Shanghai');
select name from employeeinfo where id between 1 and 1000;