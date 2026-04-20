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
