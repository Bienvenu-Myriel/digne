-- 主键约束	PRIMARY KEY  	唯一标识记录，非空且唯一
-- 唯一约束	UNIQUE       	字段值不能重复，可空
-- 非空约束	NOT NULL     	字段不允许为空
-- 默认约束	DEFAULT	      未赋值时自动使用默认值
-- 外键约束	FOREIGN KEY 	维护表之间关联完整性
-- 检查约束	CHECK	        限制字段的取值范围

#实例：
CREATE TABLE USER(
    ID INT PRIMARY KEY  AUTO_INCREMENT COMMENT '主键',
    NAME VARCHAR(10) NOT NULL  UNIQUE COMMENT '姓名',
    AGE INT CHECK ( AGE>0 AND AGE<=120 ) COMMENT '年龄',
    STATUS CHAR(1) DEFAULT '1' COMMENT '状态',
    GENDER CHAR(2) COMMENT '性别',
    NEW_NAME VARCHAR(20) NOT NULL UNIQUE COMMENT '外号'
);

-- AUTO_INCREMENT的作用是不需要手动给 ID 字段赋值，插入数据时，数据库会自动按顺序生成一个不重复的整数。 要注意的是一张表只能有一个 AUTO_INCREMENT 字段。
-- datagrip里右键数据库可以通过图形化界面创建表单

#外键关联
CREATE TABLE 表名(
  字段名 数据类型,
  ...
  [CONSTRAINT][外键名称] FOREIGN KEY(外键字段名) REFERENCES 主表(主表列名)
); -- 直接创建有外键的表

#格式：
ALTER TABLE 表名 ADD CONSTRAINT 外键名称 FOREIGN KEY(外键字段名)REFERENCES 主表(主表列名); -- 给表增加一个外键关联
#例：
ALTER TABLE AVE_MUJICA ADD CONSTRAINT FRKEY FOREIGN KEY(DEPT_ID)REFERENCES user(ID); -- 可以关闭AVE_MUJICA重新打开看到关联的蓝色小钥匙出现在表单的字段左下角（黄色小钥匙是主键，蓝色是外键）

#格式：
ALTER TABLE 表名 DROP FOREIGN KEY 外键名称;
#例：
ALTER TABLE AVE_MUJICA DROP FOREIGN KEY FRKEY; -- 注意外键名称是什么！！！

#外键的更新/删除行为

-- | NO ACTION  | 当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则不允许删除/更新。 (与 RESTRICT 一致) 
-- | RESTRICT   | 当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有则不允许删除/更新。 (与 NO ACTION 一致) 
-- | CASCADE    | 当在父表中删除/更新对应记录时，首先检查该记录是否有对应外键，如果有，则也删除/更新外键在子表中的记录。 
-- | SET NULL   | 当在父表中删除对应记录时，首先检查该记录是否有对应外键，如果有则设置子表中该外键值为null（这就要求该外键允许取null）。 
-- | SET DEFAULT| 父表有变更时，子表将外键列设置成一个默认的值 (Innodb不支持)          

#外键的更新删除行为格式：
ALTER TABLE 表名 ADD CONSTRAINT 外键名称 FOREIGN KEY(外键字段) REFERENCES 主表名(主表字段名) ON UPDATE 外键更新/删除 ON DELETE 外键更新/删除;  

#例1：
ALTER TABLE AVE_MUJICA ADD CONSTRAINT FRKEY FOREIGN KEY(DEPT_ID)REFERENCES user(ID) ON UPDATE CASCADE ON DELETE CASCADE;  -- 把ID和DEPT_ID设置 ON UPDATE CASCADE 级联更新，即id的变化会直接影响DEPT_ID
#例2：
ALTER TABLE AVE_MUJICA ADD CONSTRAINT FRKEY FOREIGN KEY(DEPT_ID)REFERENCES user(ID) ON UPDATE SET NULL ON DELETE SET NULL;  -- 父表删除关联内容时，把子表的值设置为null














