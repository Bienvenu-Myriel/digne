#字符函数：
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

#实操：
UPDATE MUJICA SET ID = LPAD(ID, 2, '0') WHERE LENGTH(ID) < 2; -- 把mujica的ID不足两位数的字符串在左侧加一个0

#数值函数：
-- CEIL(X) 向上取整
-- FLOOR(X) 向下取整
-- MOD(X,Y) 返回X/Y的模，模就是余数
-- RAND()   返回0~1内的随机数
-- ROUND(X,Y) 求参数X，四舍五入的值，保留Y位小数

#案例：
SELECT CEIL(1.8);
SELECT FLOOR(1.1);

SELECT MOD(3,4); -- 就是3/4取余数，得到3

SELECT RAND(); -- 会有多位小数

SELECT ROUND(3.14,2);

#实操：
-- 通过RAND()生成一个随机六位验证码
SELECT LPAD(FLOOR(RAND()*1000000),6,'0'); -- 函数可以包裹函数

