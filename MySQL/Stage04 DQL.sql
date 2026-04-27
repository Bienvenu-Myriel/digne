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
#例1：
SELECT * FROM MUJICA WHERE age > 20;
#例2:
SELECT * FROM MUJICA WHERE age BETWEEN 20 AND 40; -- 查询age位于20到40的字段
SELECT * FROM MUJICA WHERE age >= 20 && age <= 40; -- 和BETWEEN ... AND ... 是等效的，把&&替换成and效果一样。
#例3：
SELECT * FROM MUJICA WHERE NEW_NAME3 IS NULL;  -- 查询NEW_NAME3为null的字段
SELECT * FROM MUJICA WHERE NEW_NAME3 IS NOT NULL;  -- 不用多说了吧？
#例4：
SELECT * FROM MUJICA WHERE AGE IN (20,35,28);  -- 查询()内有的字段
#例5：
SELECT * FROM MUJICA WHERE NAME LIKE '___';  -- ''里一共三个下划线，一个_对应一个字符,'_花'，第一个随意字符，但第二个必须是花
SELECT * FROM MUJICA WHERE NAME LIKE '花%';  -- %表示任意字符数，但是“花”必须在首位，'%花'就是花必须在末尾，'%花%'就是所有包含花的字段

-- 聚合函数（null值不参与）,复合函数参考Stage04 DQL+.sql
#格式：
SELECT 聚合函数() FROM 表名;
#例1：
SELECT COUNT(*) FROM MUJICA; -- *是全体，就是在计算一共有多少条字段
SELECT COUNT(ID) FROM MUJICA; -- 因为null值不参与，所有不会计算包含有null值的字段
#例2：
SELECT AVG(AGE) FROM MUJICA; -- 计算AGE的平均，avg就是average
#例3：
SELECT MAX(ID) FROM MUJICA; -- 不用多说了吧
SELECT MIN(AGE) FROM MUJICA;
#关键例4（组合where和聚合函数）：
SELECT SUM(AGE) FROM MUJICA WHERE AGE > 19; -- 计算所有年龄大于19的人的年龄和
SELECT AVG(AGE) FROM MUJICA WHERE AGE > 19; -- 计算所有年龄大于19的人的平均年龄




