##  載入csv進MySQL坑
#  Error Code: 1290.  step1:  windows下：修改my.ini (預設，C:\ProgramData\MySQL\MySQL Server 8.0) 的secure_file_priv = ''
#  並重啟 mysql服務
#  Error Code: 3948.  step2: SHOW GLOBAL VARIABLES LIKE 'local_infile'; 如果為off則改為ON  SET GLOBAL local_infile=1;
## 切換到command line (在workbench或mysql commandline 會有bug) 
#  在cmd輸入 mysql --local-infile=1 -u root -p

use 某一database;
# 請先創建TABLE discounts(和相對應column) 再執行以下LOAD指令
LOAD DATA local INFILE 'C:\\worksp\\mysql\\discounts.csv' 
INTO TABLE discounts 
# 文件的字段由逗號表示
FIELDS TERMINATED BY ','
# 每個字段都用雙引號括起來
ENCLOSED BY '"'
# CSV文件的每一行都由指示换行符號 终止
LINES TERMINATED BY '\n'
# 忽略第一行標題
IGNORE 1 ROWS;
