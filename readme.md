匯出表格
mysqldump -u root -p 指定database table_name1 table_name2 > backup_table.sql

匯入表格
create database test_DB;
use test_DB;
(在mysql command line)source C:\...\backup_table.sql
