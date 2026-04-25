-- []中括号内的内容表示可加可不加
-- DDL表单的修改和删除:
-- 增加表单field(字段)的方法： 
ALTER TABLE HUAHUA ADD NAME2 VARCHAR(6) [COMMENT 'SAO'];   -- HUAHUA是已有表单的名字（在这个表单里增加一个FIELD（字段）） ADD后面加自定义的名字（就是字段） +数据类型 

-- 修改表单ytpe的方法：
ALTER TABLE HUAHUA MODIFY NAME2 INT COMMENT '这是修改数据类型（type）的方法';   -- MODIFY是关键词 int要变更成的数据类型（会覆盖原来的数据类型）

-- 修改表单里字段的方法：
ALTER TABLE HUAHUA CHANGE NAME2 NEW_NAME3 VARCHAR(10) COMMENT '这个方法可以同时修改Field和Type'; -- NAME2就是旧的字段名 NEW_NAME3就是新的字段名，VARCHAR(10)是新的数据类型，
#NEW_NAME3和VARCHAR(10)都会覆盖之前的数据。

-- 删除字段的方法：
ALTER TABLE HUAHUA DROP SAO;  -- SAO就是字段名


-- 重命名表单（table）的方法：
ALTER TABLE HUAHUA RENAME TO MUJICA; -- 把表单（TABLE）huahua改名成mujica。


-- 删除表单（table）的方法：
DROP TABLE [IF EXISTS] SPIRIT;  -- drop就是删除呗没啥好说的,SPIRIT就是表单的名字（TABLE）


-- 删除表单（table）的数据但是留下空表单和field字段的方法：
TRUNCATE TABLE SPIRIT;  -- 这个方法只会清空表中的数据行，不会删除表结构也就是 field / 字段
