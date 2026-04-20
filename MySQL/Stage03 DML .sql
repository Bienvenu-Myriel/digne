DML添加数据：
1.给指定字段添加数据：
INSERT INTO 表名(字段1,字段2,...) VALUES(值1,值2,...);
实践：  INSERT INTO MUJICA(ID, NAME, AGE, GENDER, NEW_NAME3)  VALUES(01,'花花',18,'男','花仙子')


2.给全部字段添加数据：
INSERT INTO 表名 VALUES(值1,值2,...);


3.批量添加数据
INSERT INTO 表名(字段名1,字段名2,...) VALUES(值1,值2,...),(值1,值2,...),(值1,值2,...);
INSERT INTO 表名VALUES(值1,值2,...),(值1,值2,...),(值1,值2,...);


SELECT * FROM MUJICA   --从 MUJICA 这张表中，查询所有列、所有行的数据
