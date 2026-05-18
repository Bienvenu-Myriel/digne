-- multi-table query(多表查询)
SELECT * FROM team,player;  -- 多表查询，有Cartesian Product (笛卡尔积)（两张表的结合）
SELECT * FROM team,player WHERE team.id = player.player_id;  -- 语法是 表.外键关联数据 以消除Cartesian Product

-- =======================

#Join_Query(连接查询)
-- INNER_JOIN(内连接)：Queries the intersection of two tables(查询A,B交集部分数据)
-- OUTER_JOIN(外连接)：Left / Right / Full Outer Join(A或B的全部+A与B的并集)
-- SELF_JOIN(自连接)：Must use aliases, query within the same table（必须使用别名，同表互查）

-- =======================
  
#Implicit_Inner_Join(隐式内连接):
  
SELECT 字段列表 FROM 表1,表2 WHER 条件...;  -- 字段列表(field list) 
#Case(案例):
-- 查询每一个player的名字和team的名称(使用Implicit Inner Join)
SELECT player.player_name,team.name FROM player,team WHERE team.id = player.player_id; -- Join using foreign key(外键): player.team_id references team.id
SELECT P.player_name,T.name FROM player AS P , team T WHERE T.id = P.player_id;  -- as can be omitted(省略)

#Explicit_Inner_Join（显式内连接:
  
SELECT 字段列表 FROM table1 [INNER] JOIN table2 ON join_condition（连接条件）...；
#Case:
SELECT T.name,P.player_name FROM team T JOIN player P ON T.id = P.player_id; -- 内连接不用在意Put primary tables(也可以翻译为main tables 都是主表) before joined child tables（子表），但是外连接刚性需要这么做.

-- =======================

#Left_Outer_Join(左外连接):
SELECT field_list(字段列表) FROM table1(表1) LEFT[OUTER] JOIN table2 ON join_condition(连接条件)...;  -- It returns all data from table1, together with the intersecting(交集) data from table2.（相当于查询list1的所有数据加上list1和list2的交集部分数据）   
#Case:
SELECT T.*,P.player_name FROM team T LEFT OUTER JOIN player P ON T.id = P.player_id;  -- Query all records from the team table, together with their associated player_name information.

#Right_Outer_Join(右外连接):
SELECT field_list FROM table1 RIGHT [OUTER] JOIN table2 ON join_condition...; -- It returns all data from table2, together with the intersecting(交集) data from table1.
#Case:
SELECT T.name,P.* FROM team T RIGHT JOIN player P ON T.id = P.player_id;   -- Query all records from the player table, together with their associated team name information.

-- ========================
#Self_Join:

SELECT field_list FROM table1 alias_B(别名B)  ON join_condition...;  -- Self-join queries can be either inner join queries or outer join queries.(自我连接查询可以是内查询也可以是外查询)
#Case:
SELECT A.player_name,B.top FROM player A,player B WHERE A.id = B.top ;  -- Self-joins do not require foreign key constraints, but they do need a column that references the id of the same table.
-- （自连接不需要外键约束 但必须有一个字段指向本表的 id）
SELECT A.player_name'选手',B.top'top位' FROM player A,player B WHERE A.id = B.top ;


-- ========================

#创建表单的代码：
CREATE TABLE team (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,   -- 队伍名
    top INT NOT NULL             -- HLTV世界排名
);



INSERT INTO team (id, name, top)
VALUES
(1, 'Vitality',    1),   -- 第1名
(2, 'NAVI',        2),   -- 第2名
(3, 'Falcons',     4),   -- 第4名
(4, 'Spirit',      5);   -- 第5名



CREATE TABLE player (
    id INT PRIMARY KEY AUTO_INCREMENT,
    player_name VARCHAR(50) NOT NULL,
    top VARCHAR(10) NOT NULL,       -- '1','2',...,'20+'
    team VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    role VARCHAR(30) NOT NULL,
    player_id INT NOT NULL,         -- 外键关联 team.id
    FOREIGN KEY (player_id) REFERENCES team(id)
);



INSERT INTO player (player_name, top, team, age, role, player_id)
VALUES
-- ==============================================
-- Vitality (team.id=1)
-- ==============================================
('ZywOo',    '1',    'Vitality', 24, '狙击手',        1),
('ropz',     '3',    'Vitality', 25, '自由人/步枪手',  1),
('flameZ',   '7',    'Vitality', 21, '突破手',        1),
('apEX',     '20+',  'Vitality', 31, '指挥/步枪手',    1),
('mezii',    '12',   'Vitality', 26, '步枪手',        1),

-- ==============================================
-- NAVI (team.id=2)
-- ==============================================
('b1t',      '20',   'NAVI',     23, '步枪手',        2),
('iM',       '19',   'NAVI',     22, '步枪手',        2),
('Aleksib',  '20+',  'NAVI',     28, '指挥',          2),
('w0nderful','20+',  'NAVI',     21, '狙击手',        2),
('makazze',  '20+',  'NAVI',     20, '步枪手',        2),

-- ==============================================
-- Falcons (team.id=3)
-- ==============================================
('m0NESY',   '4',    'Falcons',  22, '狙击手',        3),
('NiKo',     '20+',  'Falcons',  28, '步枪手/指挥',   3),
('kyxsan',   '20+',  'Falcons',  25, '指挥',          3),
('TeSeS',    '20+',  'Falcons',  26, '步枪手',        3),
('kyousuke', '20+',  'Falcons',  17, '步枪手',        3),

-- ==============================================
-- Spirit (team.id=4)
-- ==============================================
('donk',     '2',    'Spirit',   18, '狙击手/突破手', 4),
('sh1ro',    '5',    'Spirit',   22, '狙击手',        4),
('magixx',   '20+',  'Spirit',   21, '步枪手',        4),
('tN1R',     '20+',  'Spirit',   23, '步枪手',        4),
('zont1x',   '20+',  'Spirit',   22, '步枪手',4);
