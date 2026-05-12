#查询用户：
USE MYSQL;
SELECT * FROM  USER;

#创建用户：
CREATE USER '用户名'@'主机名' IDENTIFIED BY '密码'; -- 这里的密码是用户单独的密码而不是主机的密码,只创建用户还没给权限。
#例1：
CREATE USER 'HUAHUA'@'LOCALHOST' IDENTIFIED BY '91HUAHUA';  -- 在powershall或者cmd里输入mysql -u HUAHUA -p 就可以直接访问了。HUAHUA是用户名
#例2：
CREATE USER 'XIAOHUA'@'%' IDENTIFIED BY '91HUAHUA'; --  %代表在任何主机上都能访问


#修改用户密码
ALTER USER '用户名'@'主机名' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY '新密码';
#例：
ALTER USER 'XIAOHUA'@'%' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY '123456789';

#删除用户
DROP USER'用户名'@'主机名';

#查询权限
SHOW GRANTS FOR '用户名'@'主机名';

#授予权限
GRANT 权限列表 ON 数据库名.表名 TO '用户名'@'主机名';
#例1：
GRANT SELECT ON MYGO.MUJICA TO 'HUAHUA'@'localhost'; 
#例2：
GRANT ALL ON MYGO.* TO 'HUAHUA'@'localhost';

#撤销权限
REVOKE 权限列表 ON 数据库名.表名 FROM '用户名'@'主机名';
#例1：
REVOKE ALL ON MYGO.MUJICA FROM 'HUAHUA'@'localhost'; -- 重难点！！！ 如果给与权限时是用 数据库.表 的格式来给的不能直接用 数据库.* 来删,但仍然可以通过ALL删除所有权限
#例2：
REVOKE ALL ON MYGO.* FROM 'HUAHUA'@'localhost';

-- 权限一览：
-- 全部权限：ALL / ALL PRIVILEGES    PRIVILEGES（单词的意思是权限）可省略
-- 查询：SELECT
-- 插入：INSERT
-- 修改：UPDATE
-- 删除：DELETE
-- 创建：CREATE
-- 修改结构：ALTER
-- 删除库 / 表：DROP
-- 授权权限：GRANT（给别人授权）
-- 执行存储过程：EXECUTE
