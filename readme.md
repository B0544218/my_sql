匯出表格
mysqldump -u root -p 指定database table_name1 table_name2 > backup_table.sql

匯入表格
create database test_DB;
use test_DB;
(在mysql command line)source C:\...\backup_table.sql

## 安裝Mysql後
- mysql -u root -p
- (安裝mysql時輸入的密碼)
- UPDATE mysql.user SET authentication_string=null WHERE User='root';
- FLUSH PRIVILEGES;
- exit;

- mysql -u root
- ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '某個DB的密碼(我用實驗室的名稱當作密碼)';
- (用- mysql -u root -p ，enter後，用某個DB的密碼登入)
