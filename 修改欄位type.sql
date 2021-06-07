use demo;
show tables;
show columns from train;
alter table train modify Survived int;
select Survived from train
set SQL_SAFE_UPDATES = 0;
# 假設Age一開始為varchar 並且空值都是''
update train set Age=null where Age = '';
alter table train modify Age float;
show columns from train;

select Age from train where Age between 20 and 40;