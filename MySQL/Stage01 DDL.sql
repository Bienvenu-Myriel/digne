-- 查询所有数据库：
SHOW DATABASES;
-- 创建数据库：
-- 中括号[]中内容代表可加可不加

CREATE DATABASE NAME   -- NAME=自定义名字,如果已有同名数据库会创建失败。
CREATE DATABASE [IF NOT EXISTS] NAME  -- 如果没有同名就创建NAME，目的是脚本可重复执行，避免程序中断,exists的意思是存在

创建字符集：
CREATE DATABASE NAME DEFAULT CHARSET UTF8   -- mysql里千万不能随便加-，即使是utf-8，而且MySQL 的 utf8 是阉割版，只支持 3 字节字符，存不了 emoji、特殊符号。
-- 那如何是好？通过下面的方法：
CREATE DATABASE [IF NOT EXISTS] 小乐 DEFAULT CHARSET UTF8MB4; -- IF NOT EXISTS可加可不加，但是自动化脚本还是加一下比较好。
#utf8mb4 = 真正的 UTF-8（支持 四字节 emoji  官方推荐） 

# 补充知识点：
# 1 个英文字母 = 1 字节
# 1 个阿拉伯数字 = 1 字节
# 1 个普通汉字 = 2～3 字节
# 1 个 emoji = 4 字节

-- 删除数据库：
DROP DATABASE [IF EXISTS] 小乐;  -- IF EXISTS可加可不加。

-- 使用数据库：
USE NAME;   -- 会显示Database changed表示已经切换到当前数据库

-- 查看当前数据库：
SELECT DATABASE();  -- 使用函数查询。

-- 查询当前数据库的所有表单：
SHOW TABLES;

-- 创建表单：
CREATE TABLE NAME (
  ID INT [COMMENT '注释内容'],
  NAME VARCHAR(20) [COMMENT '注释内容'],
  GENDER CHAR(1) [COMMENT '性别不是男就是女，所有直接用char']
  );[COMMENT '']

-- 查看表单的结构：
 DESC HUAHUA;  -- HUAHUA就是创建的表单的名字

-- 更详细的查看表单：
 SHOW CREATE TABLE HUAHUA;

#千万记得：1.COMMENT + 空格 + 单引号 + 注释内容 + 单引号 COMMENT后面必须跟一个空格
         #2.变量A 后面跟输入类型，VARCHAR() （）内的数字就是最大字符串长度。
         #3.千万记得要在末尾加逗号
         #4.在mysql里只要你没输入;就不会执行，所有可以输入一部分先回车再输入后面部分用;来结尾，但是注意已经回车的内容不支持修改只能ctrl+c停止了
         #5.最后一个字段的末尾，绝对不能加逗号,加了逗号默认还有内容所以系统会报错

# 类型     字节	 有符号范围	                无符号范围	     适合场景
# TINYINT	  1 	 -128 ~ 127               	0 ~ 255	       状态、性别、开关
# SMALLINT	2	   -32768 ~ 32767           	0 ~ 65535	     分类 ID、小数量
# MEDIUMINT	3  	 -8388608 ~ 8388607	        0 ~ 16777215	 阅读量、统计数
# INT      	4  	 -2¹⁴⁷⁴⁸³⁶⁴⁸ ~ 2¹⁴⁷⁴⁸³⁶⁴⁷  	0 ~ 4294967295 普通 ID、用户 ID
# BIGINT  	8  	 -922 亿… ~ 922 亿…	        0 ~ 1.8e19	   超大 ID、分布式 ID
# tinyint因为字节只有1字节所以绝对比高字节的类型要少占用内存（字节越少越省内存）


-- 一、整数类型
-- TINYINT：小整数（-128~127），用于状态、性别、开关
-- INT：普通整数，用户 ID、数量、排序等（最常用）
-- BIGINT：大整数，超大 ID、订单号、分布式 ID
-- 二、小数类型
-- DECIMAL(M,D)：精确小数，金额、价格必须用
-- DOUBLE：普通浮点小数，经纬度、比例、重量等
-- 三、字符串类型
-- VARCHAR(N)：可变长度字符串，用户名、标题、地址、手机号（最常用）
-- CHAR(N)：固定长度字符串，身份证、邮编、固定位数编码
-- TEXT：长文本，文章内容、详情描述、大段备注
-- 四、日期时间类型
-- DATE：仅日期，格式 YYYY-MM-DD
-- TIME：仅时间，格式 HH:MM:SS
-- DATETIME：日期 + 时间，YYYY-MM-DD HH:MM:SS（创建 / 更新时间常用）
-- TIMESTAMP：时间戳，可自动更新，常用于更新时间
-- 五、其他常用
-- BOOLEAN/BOOL：布尔值，1=true，0=false，用于是否、开关
-- JSON：存储 JSON 格式数据，配置项、扩展参数
  
-- 在数据类型后面加上UNSIGNED可以取消负值的范围，比如年龄不可能是负的所以用 TINYINT UNSIGNED  （记得要在关键词后面加空格） UNSIGNED就是无符号的意思
--  DOUBLE(总长度, 小数位数)
  

