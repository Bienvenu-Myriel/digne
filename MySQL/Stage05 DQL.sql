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
#例4：
SELECT NAME,COUNT(*) FROM MUJICA WHERE AGE < 35 GROUP BY NAME HAVING COUNT(*); -- HAVING 的作用就是在已经筛选过一次的结果上再筛一次，但是只能筛NAME和COUNT(*) 即在小组内再筛
-- 执行顺序where > 聚合函数 > having

-- 排序查询：
#语法：
SELECT 字段列表 FROM 表名 ORDER BY 字段1 排序方式1,字段2 排序方式2;  -- ASC（默认）升序排序 DESC 降序排序
#例1：
SELECT * FROM MUJICA ORDER BY AGE ; 等效于  SELECT * FROM MUJICA ORDER BY AGE ASC; -- ASC是默认所有可以省略
SELECT * FROM MUJICA ORDER BY AGE DESC; -- 就是降序排序呗~
#例2：
SELECT * FROM MUJICA ORDER BY AGE ASC,ID DESC; -- ASC可省略，这行代码的意思是选中age，先进行升序排序，如果age相同再选中ID降序排序

-- 分页查询：
#语法：
SELECT 字段列表 FROM 表名 LIMIT 起始索引,查询记录数; -- 注意起始索引从0开始，所以要查第x页，查询记录数是y个，起始索引为（x-1）* y，如果查询的是第一页，0可以省略。
#例1：
SELECT * FROM MUJICA LIMIT 10; -- 0可以省略，查询第一页的10条数据
#例2：
SELECT * FROM MUJICA ORDER BY ID LIMIT 20 , 10;  -- 分页查询可以和order by等结合，查询第三页，起始索引为（3-1）*10 

#核心执行顺序：
-- WHERE → GROUP BY → HAVING → ORDER BY → LIMIT 必须先写WHERE 再写GROUP BY 后写HAVING ······按这个顺序写。
