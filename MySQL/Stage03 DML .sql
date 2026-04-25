DML添加数据：
1.给指定字段添加数据：
INSERT INTO 表名(字段1,字段2,...) VALUES(值1,值2,...);
实践：INSERT INTO MUJICA(ID, NAME, AGE, GENDER, NEW_NAME3)  VALUES(01,'花花',18,'男','花仙子'); --这是全部字段都添加数据
INSERT INTO MUJICA(ID, NAME, AGE, GENDER)  VALUES(01,'花花',18,'男'); --这是选择一部分字段添加数据


2.给全部字段添加数据：
INSERT INTO 表名 VALUES(值1,值2,...);
实践：INSERT INTO MUJICA VALUES (2,'牢钟',19,'男？','1315最强赋能哥'); --只要不主动写要给哪些字段添加，默认全部都要加数据


3.批量添加数据
INSERT INTO 表名(字段名1,字段名2,...) VALUES(值1,值2,...),(值1,值2,...),(值1,值2,...); --就是批量给指定字段添加数据

INSERT INTO 表名VALUES(值1,值2,...),(值1,值2,...),(值1,值2,...);
实践：INSERT INTO MUJICA VALUES (2,'牢钟',19,'男？','1315最强赋能哥'),(3,'小辉',19,'男','最强三国杀玩家'); --直接在末尾加一个逗号就可以无限续杯


SELECT * FROM MUJICA   --从 MUJICA 这张表中，查询所有列、所有行的数据

DML修改和更新数据：
  
UPDATE 表名 SET 字段名1=值1 字段名2=值2,...[WHERE 条件];

实践1：UPDATE MUJICA SET NAME='LIAO' WHERE NAME='牢钟';
实践2：UPDATE MUJICA SET ID=3 WHERE NAME='LIAO';
实践3：UPDATE MUJICA SET GENDER='福瑞' WHERE ID='3';
注意这里的ID GENDER ID 都是在创建表格时给的属性，如果没有where 条件的话表内所有数据都会改变

删除数据：

DELETE FROM 表名 [WHERE 条件];

实践1：DELETE FROM MUJICA WHERE NAME='LIAO';
实践2：DELETE FROM MUJICA;   --这里不加where等效于之前学的 TRUNCATE TABLE 表名;



