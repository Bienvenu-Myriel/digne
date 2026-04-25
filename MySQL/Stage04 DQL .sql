基本查询

查询多个字段：
SELECT 字段1,字段2,字段3...FROM 表名;
例：SELECT NAME,ID,AGE FROM MUJICA;  -- 相当于把表切片，只查看这部分字段的表
查询整个表：
SELECT*FROM 表名;

设置别名
SELECT 字段1 [AS 别名1],字段2[AS 别名2]...FROM 表名;

去除重复记录：
SELECT DISTINCT 字段列表 FROM 表名;


