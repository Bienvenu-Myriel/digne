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

ALTER TABLE 表名 ADD CONSTRAINT 外键名称 FOREIGN KEY(外键字段名)REFERENCES 主表(主表列名); -- 给表增加一个外键关联



