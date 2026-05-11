-- 1.查询年龄为18，19，20的男性。
SELECT * FROM mujica WHERE AGE IN (18,19,20) AND GENDER ='男';

-- 2.查询不同性别，年龄小于30岁，而且名字为三个字的人。
SELECT GENDER, COUNT(*) FROM MUJICA WHERE AGE < 30 AND NAME LIKE '___' GROUP BY GENDER;  -- 注意检索 聚合函数 + 普通字段（列） → 必须加 GROUP BY

-- 3.
