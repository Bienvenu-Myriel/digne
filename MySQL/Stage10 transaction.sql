#View/Set transaction commit mode(查看/设置事物提交方式)
SELECT @@AUTOCOMMIT;
SET @@AUTOCOMMIT=0;  -- Set manual submission(设置手动提交)

#Commit(提交事务):
COMMIT;

#Rollback(回滚):
ROLLBACL;

