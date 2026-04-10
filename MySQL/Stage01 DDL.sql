查询所有数据库：
SHOW DATABASES;
创建数据库：
中括号[]中内容代表可加可不加
CREATE DATABASE NAME   --NAME=自定义名字,如果已有同名数据库会创建失败。
CREATE DATABASE [IF NOT EXISTS] NAME  --如果没有同名就创建NAME，目的是脚本可重复执行，避免程序中断,exists的意思是存在
创建字符集：
CREATE DATABASE NAME DEFAULT CHARSET UTF8   --mysql里千万不能随便加-，即使是utf-8，而且MySQL 的 utf8 是阉割版，只支持 3 字节字符，存不了 emoji、特殊符号。
那如何是好？utf8mb4 = 真正的 UTF-8（支持 四字节 emoji  官方推荐） 
即CREATE DATABASE [IF NOT EXISTS] 小乐 DEFAULT CHARSET UTF8MB4;--IF NOT EXISTS可加可不加，但是自动化脚本还是加一下比较好。

补充知识点：
1 个英文字母 = 1 字节
1 个阿拉伯数字 = 1 字节
1 个普通汉字 = 2～3 字节
1 个 emoji = 4 字节

删除数据库：
DROP DATABASE [IF EXISTS] 小乐;--IF EXISTS可加可不加。
使用数据库：
USE NAME; --会显示Database changed表示已经切换到当前数据库

查看当前数据库：
SELECT DATABASE();--使用函数查询。

查询当前数据库的所有表单：
SHOW TABLES;
创建表单：
CREATE TABLE NAME (
  ID INT [COMMENT '注释内容'],
  NAME VARCHAR(20) [COMMENT '注释内容'],
  GENDER VARCHAR(2) [COMMENT '']
  );[COMMENT '']

  千万记得：1.COMMENT + 空格 + 单引号 + 注释内容 + 单引号 COMMENT后面必须跟一个空格
         2.变量A 后面跟输入类型，在mysql里字符串的输入类型是VARCHAR() （）内的数字就是最大字符串长度。
         3.千万记得要在末尾加逗号
         4.在mysql里只要你没输入;就不会执行，所有可以输入一部分先回车再输入后面部分用;来结尾，但是注意已经回车的内容不支持修改只能ctrl+c停止了
         5.最后一个字段的末尾，绝对不能加逗号,加了逗号默认还有内容所以系统会报错

类型	字节	有符号范围	无符号范围	适合场景
TINYINT	1	-128 ~ 127	0 ~ 255	状态、性别、开关
SMALLINT	2	-32768 ~ 32767	0 ~ 65535	分类 ID、小数量
MEDIUMINT	3	-8388608 ~ 8388607	0 ~ 16777215	阅读量、统计数
INT	4	-2¹⁴⁷⁴⁸³⁶⁴⁸ ~ 2¹⁴⁷⁴⁸³⁶⁴⁷	0 ~ 4294967295	普通 ID、用户 ID
BIGINT	8	-922 亿… ~ 922 亿…	0 ~ 1.8e19	超大 ID、分布式 ID
tinyint因为字节只有1字节所以绝对比高字节的类型要少占用内存（字节越少越省内存）
  
 查看表单的结构：
 用DESC HUAHUA;  --HUAHUA就是创建的表单的名字

 更详细的查看表单：
 SHOW CREATE TABLE HUAHUA;
