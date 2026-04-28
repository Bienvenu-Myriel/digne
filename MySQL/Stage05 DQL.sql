-- 分组查询：
#语法：
SELECT 字段列表1,字段2（也可以是聚合函数）,... FROM 表名 [WHERE 条件] GROUP BY 分组字段名 [HAVING 分组后过滤条件];  
-- where和having不同，where在分组之前进行过滤，不满足where条件，不参与分组，having则是分组后对结果过滤，另外having可以对聚合函数进行判断而where不行。
#例1：
SELECT AGE,COUNT(*) FROM MUJICA GROUP BY AGE; -- COUNT(*)的作用就是COUNT(*) = 统计行数
#例2：
SELECT AGE,AVG(AGE),COUNT(*) FROM MUJICA GROUP BY AGE; -- COUNT(*)可以不加，它的作用就是多一列显示不同年龄段各有多少。
#例3：
SELECT NAME,COUNT(*) FROM MUJICA WHERE AGE < 35 GROUP BY NAME; -- 统计年龄小于35岁的人的名字，和叫这个名字的人数

