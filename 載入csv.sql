use demo;
create table test(Passenger varchar(20),
				  Survived int,
                  Pclass varchar(5),
                  Name varchar(20),
				  Sex varchar(10),
                  Age float NULL,
                  SibSp int,
                  Parch int,
                  Ticket varchar(20),
                  Fare float,
				  Cabin varchar(20) null,
                  Embarked varchar(5),
                  PRIMARY KEY (Passenger));
show columns from test;

##  載入csv進MySQL坑
#  Error Code: 1290.  step1:  windows下：修改my.ini (預設，C:\ProgramData\MySQL\MySQL Server 8.0) 的secure_file_priv = ''
#  並重啟 mysql服務
#  Error Code: 3948.  step2: SHOW GLOBAL VARIABLES LIKE 'local_infile'; 如果為off則改為ON  SET GLOBAL local_infile=1;
## 切換到command line (在workbench或mysql commandline 會有bug) 
#  在cmd輸入 mysql --local-infile=1 -u root -p


# 請先創建TABLE discounts(和相對應column) 再執行以下LOAD指令(在cmd中)
# 文件的字段由逗號,表示
# 每個字段都用雙引號"括起來
# CSV文件的每一行都由指示换行\n符號 终止
# 忽略第一行標題
LOAD DATA local INFILE 'C:\\Users\\kevin\\Desktop\\train.csv' 
INTO TABLE test 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show columns from test;
select * from test;

drop table test;