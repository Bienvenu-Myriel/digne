#Union_query(联合查询)
SELECT field_list FROM tableA ...
UNION [ALL] 
SELECT field_list FROM tableB ...;    -- For union query, it combines the results of multiple queries to form a new result set.(对于union query，就是把多次查询的结果合并起来，形成一个新的查询结果集)
-- Retain the ALL clause in UNION ALL to preserve duplicate records. (在UNION ALL中保留ALL子句，即可保留重复数据。)

#Case:
SELECT * FROM player WHERE top < 10
UNION ALL
SELECT * FROM player WHERE id < 10;  -- A union query requires the same number of columns.(使用联合查询需要列数一致)

-- ===============================

#Subquery(子查询)
SELECT * FROM table1 WHERE column1 = (SELECT column1 FROM table2);  -- The outer statement of a subquery can be any one of INSERT, UPDATE, DELETE, or SELECT. 
-- (子查询的外部语句可以是INSERT/UPDATE/DELECT/SELECT的任何一个)

#Scalar_subquery(标量子查询) also called nested_query(嵌套查询)
#Case:
SELECT * FROM player WHERE player_id = (SELECT team.id FROM team WHERE name = 'falcons'); -- Retrieve(检索、查询) team ID and player information.
#Case2:
SELECT player_name FROM player WHERE top < (SELECT player.top FROM player WHERE player_name = 'm0NESY'); -- Retrieve 

#Column_Subquery(列子查询):
#Case:
SELECT * FROM player WHERE player_id = (SELECT team.id FROM team WHERE name = 'falcons');  

#Row_Subquery(行子查询):
#Case:
SELECT * FROM player WHERE (top,age) = (SELECT top,age FROM player WHERE player_name = 'm0NESY'); -- 
Query player information with the same top ranking and age as the player "m0NESY".

#Table_Subquery:
#Case:
-- Query the information of players ranked within the top 20, along with their team information.(查询位于top20内的选手信息及其团队信息)
SELECT * FROM (SELECT * FROM player WHERE top < 20) top20 LEFT JOIN team T ON top20.player_id = T.id;
-- Use derived table subquery together with left join for data query.  (SELECT * FROM player WHERE top < 20)这一部分作为派生表
