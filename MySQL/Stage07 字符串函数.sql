-- CONCAT(S1,S2,...Sn)	字符串拼接，将 S1, S2, ... Sn 拼接成一个字符串
-- LOWER(str)	将字符串 str 全部转为小写
-- UPPER(str)	将字符串 str 全部转为大写
-- LPAD(str,n,pad)	左填充，用字符串 pad 对 str 的左边进行填充，达到 n 个字符长度
-- RPAD(str,n,pad)	右填充，用字符串 pad 对 str 的右边进行填充，达到 n 个字符长度
-- TRIM(str)	去掉字符串头部和尾部的空格
-- SUBSTRING(str,start,len)	返回从字符串 str 从 start 位置起的 len 个长度的字符串
-- REPLACE(str,old,new)	将字符串 str 中所有 old 子串替换为 new

#案例：
SELECT CONCAT('m0NESY',' MAJOR冠军'); -- 得到：“m0NESY  MAJOR冠军”

SELECT UPPER('Niko'); -- 全部大写
SELECT LOWER('Niko'); -- 全部小写

SELECT LPAD('HUAHUA',9,'91'); -- 9代表设定的总长度是9，会在左侧填充直到长度为9
#result：919HUAHUA
SELECT RPAD('HUAHUA',9,'91'); 

SELECT TRIM('  HUA  HUA '); -- 只除去头尾的空格，中间的空格不动

SELECT SUBSTRING('91HUAHUA',1,6); -- 保留第一到第六个字符串
