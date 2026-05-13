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

#日期函数：
-- CURDATE()   返回当前日期
-- CURTIME()   返回当前时间
-- NOW()       返回当前日期和时间
-- YEAR(DATE)  获取指定date的年份
-- MONTH(DATE) 获取指定date的月份
-- DAY(DATE)   获取指定date的日期
-- DATE_ADD(DATE,INTERVAL EXPR TYPE)   返回上一个日期/时间值加上一个时间间隔expr后的时间值
-- DATEDIFF(DATE1,DATE2)               返回起始时间date1和结束时间date2之间的天数

#案例：
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

SELECT YEAR(NOW());
SELECT MONTH(NOW();
SELECT DAY(NOW();

SELECT DATE_ADD(NOW(),INTERVAL 40 DAY); -- 往后推 40 个day
SELECT DATE_ADD(NOW(),INTERVAL 40 MONTH); -- 往后推40个月

SELECT DATEDIFF('2026-5-13','2077-4-6'); -- DATEDIFF 只认横杠格式，必须使用-来连接年月日
#实例：
-- 查询表mujica里所有入团天数并按倒叙排序
SELECT NAME,DATEDIFF(CURDATE(),ENTRYDATE) AS 'ENTRYDAYS' FROM MUJICA ORDER BY ENTRYDAYS DESC;

#流程控制函数(重中之重)：
-- IF(VALUE,T,F)            如果VALUE为TRUE,则返回T，否则返回F
-- IFNULL(VALUE1,VALUE2)    如果 VALUE1 为空（null），返回 VALUE2；不为空返回 VALUE1
-- CASE WHEN [VALUE1] THEN [RES1] ... ELSE [DEFAULT] END          如果VALUE为true，返回RES1否则返回默认DEFAULT
-- CASE [EXPR] WHEN [VALUE1] THEN [RES1] ... ELSE [DEFAULT] END   如果EXPR的值等于VALUE1，那么返回RES1,否则返回DEFAULT默认值

#案例：
SELECT IF(FALSE,'HUAHUA','ERROR');

SELECT IFNULL('91','SAKI!');  -- 注意空字符串仍然不是null。
SELECT IFNULL('','SAKI!');    --会返回空字符串
SELECT IFNULL(NULL,'SAKI!');  --会返回'SAKI!'

#实例：
-- 查询mujica里成员的姓名和学校，如果是（月之森和羽丘则-->少女乐队学校，其他学校-->普通学校）
SELECT NAME,(CASE SCHOOL WHEN '月之森' THEN '少女乐队学校' WHEN '羽丘' THEN '少女乐队学校' ELSE '其他学校' END) FROM mujica;  -- ()是为了优先执行case函数
-- 也可以这么写
SELECT 
  NAME,
  CASE 
    WHEN SCHOOL IN ('月之森','羽丘') THEN '少女乐队学校'
    ELSE '其他学校'
  END
FROM mujica;  -- 更优雅




