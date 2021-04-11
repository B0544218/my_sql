#創建database
create database Qadbtesting;
use Qadbtesting;
#創建table
create table employeeinfo(name varchar(20),id int,location varchar(20),age int);
# describe employeeinfo;
#插入record
insert into employeeinfo values("Tim",1,"Beijing",21);
insert into employeeinfo values("Jack",2,"Shanghai",22);
insert into employeeinfo values("Rose",3,"guangzhou",23);
insert into employeeinfo values("Lucy",4,"shenzhen",24);
insert into employeeinfo values("Lily",5,"hangzhou",25);
select * from employeeinfo;
#修改table 新增、修改、刪除欄位
alter table employeeinfo add department varchar(20);
alter table employeeinfo modify department varchar(30);
alter table employeeinfo drop department;

#update前 必須修改參數
set SQL_SAFE_UPDATES = 0;
#update
update employeeinfo set department='QA' where name = 'Tim';
update employeeinfo set department='IT' where name = 'Jack';
update employeeinfo set department='HR' where name = 'Rose';
update employeeinfo set department='Financial' where name = 'Lucy';
update employeeinfo set department='HR' where name = 'Lily';
select * from employeeinfo;
#刪除record
delete from employeeinfo where name = 'Lily';

create database example;
use example;
#刪除資料庫、資料表
drop database example;