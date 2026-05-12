#查询用户：
USE MYSQL;
SELECT * FROM  USER;

#创建用户：
CREATE USER '用户名'@'主机名' IDENTIFIED BY '密码'; -- 这里的密码是用户单独的密码而不是主机的密码
#例：
CREATE USER 'HUAHUA'@'LOCALHOST' IDENTIFIED BY '91HUAHUA'; 

#修改用户密码
ALTER USER '用户名'@'主机名' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY '新密码';

#删除用户
DROP USER'用户名'@'主机名';
