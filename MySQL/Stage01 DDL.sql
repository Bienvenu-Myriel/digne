查询所有数据库：
show databases;
创建数据库：
create database name;   --nanme=自定义名字,如果已有同名数据库会创建失败。
create database if not exists name;  --如果没有同名就创建name，目的是脚本可重复执行，避免程序中断
创建字符集：
create database name default charset utf8;  --mysql里千万不能随便加-，即使是utf-8，而且MySQL 的 utf8 是阉割版，只支持 3 字节字符，存不了 emoji、特殊符号。
那如何是好？utf8mb4 = 真正的 UTF-8（支持 四字节 emoji  官方推荐） 
即create database name default charset utf8mb4;

补充知识点：
1 个英文字母 = 1 字节
1 个阿拉伯数字 = 1 字节
1 个普通汉字 = 2～3 字节
1 个 emoji = 4 字节
