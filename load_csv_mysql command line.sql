#載入csv進MySQL坑
#  Error Code: 1290.  step1:  windows下：修改my.ini (預設，C:\ProgramData\MySQL\MySQL Server 8.0) 的secure_file_priv = ''
#  並重啟 mysql服務
#  Error Code: 3948.  step2: SHOW GLOBAL VARIABLES LIKE 'local_infile'; 如果為off則改為ON  SET GLOBAL local_infile=1;
#  在command line輸入 mysql --local-infile=1 -u root -p
#  step3: use 某一個database，然後輸入下面load指令

LOAD DATA local INFILE 'C:\\worksp\\mysql\\discounts.csv' 
INTO TABLE discounts 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;