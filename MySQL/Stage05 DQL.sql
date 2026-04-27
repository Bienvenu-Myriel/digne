-- 分组查询：
#语法：
SELECT 字段列表 FROM 表名 [WHERE 条件] GROUP BY 分组字段名 [HAVING 分组后过滤条件]; 
-- where和having不同，where在分组之前进行过滤，不满足where条件，不参与分组，having则是分组后对结果过滤，另外having可以对聚合函数进行判断而where不行。
#例1：
