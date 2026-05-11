#核心执行顺序：
-- WHERE → GROUP BY → HAVING → ORDER BY → LIMIT 必须先写WHERE 再写GROUP BY 后写HAVING ······按这个顺序写

-- 1.查询年龄为18，19，20的男性。
SELECT * FROM mujica WHERE AGE IN (18,19,20) AND GENDER ='男';

-- 2.查询不同性别，年龄小于30岁，而且名字为三个字的人。
SELECT GENDER, COUNT(*) FROM MUJICA WHERE AGE < 30 AND NAME LIKE '___' GROUP BY GENDER;  -- 注意检索 聚合函数 + 普通字段（列） → 必须加 GROUP BY

-- 3.查询年龄小于30岁的人的名字和年龄，并且按年龄大小倒序排列。
SELECT NAME,AGE FROM MUJICA WHERE AGE < 30  ORDER BY AGE DESC; -- DESC倒序，ASC顺序并且默认可省略

-- 4.查询年龄位于10~50的前五个人的名字和年龄，并且按年龄大小顺序排序
