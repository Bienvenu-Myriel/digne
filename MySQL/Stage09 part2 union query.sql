#union_query(联合查询)
SELECT field_list FROM tableA ...
UNION [ALL] 
SELECT field_list FROM tableB ...;    -- For union query, it combines the results of multiple queries to form a new result set.(对于union query，就是把多次查询的结果合并起来，形成一个新的查询结果集)
-- Retain the ALL clause in UNION ALL to preserve duplicate records. (在UNION ALL中保留ALL子句，即可保留重复数据。)

#Case:
SELECT * FROM player WHERE top < 10
UNION ALL
SELECT * FROM player WHERE id < 10;  -- A union query requires the same number of columns.(使用联合查询需要列数一致)

-- ===============================

#subquery(子查询)
SELECT * FROM 
