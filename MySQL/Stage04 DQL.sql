-- 基本查询

-- 查询多个字段：
SELECT 字段1,字段2,字段3...FROM 表名;
#例：
SELECT NAME,ID,AGE FROM MUJICA;  -- 相当于把表切片，只查看这部分字段的表

-- 查询整个表：
SELECT*FROM 表名;

-- 设置别名
SELECT 字段1 [AS 别名1],字段2[AS 别名2]...FROM 表名;  -- 本质只是给表的原切片里，原本显示的字段1替换成别名1，但不会更改原表的属性
#例1：
SELECT NAME AS '名字' FROM MUJICA; -- AS可以省略
#例2：
SELECT NAME  '名字' FROM MUJICA;

-- 去除重复记录（只是在显示界面去除重复部分）：
SELECT DISTINCT 字段列表 FROM 表名;
#例：
SELECT DISTINCT NAME  '名字' FROM MUJICA; -- 可以和设置别名组合

-- 条件查询就是在上面的基础上在末尾加上WHERE 条件 符号（=或者>= <=,详细请见Stage04 DQL+.md）



