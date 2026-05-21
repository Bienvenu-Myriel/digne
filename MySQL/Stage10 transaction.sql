#View/Set transaction commit mode(查看/设置事物提交方式)
SELECT @@AUTOCOMMIT;
SET @@AUTOCOMMIT=0;  -- Set manual submission(设置手动提交)

#Commit(提交事务):
COMMIT;

#Rollback(回滚):
ROLLBACL;

-- =======================================
Database Transaction Isolation Phenomena & Levels (English Version)
1. Dirty Read
Definition: One transaction reads uncommitted data modified by another transaction.
Problem: The read data may be rolled back, resulting in invalid data.
Solution: Use Read Committed or higher isolation level.
2. Non-Repeatable Read
Definition: Within the same transaction, reading the same row of data twice gets different results.
Cause: Other transactions update and commit this row data.
Difference from Dirty Read: It reads committed valid data, only inconsistent results in the same transaction.
Solution: Use Repeatable Read or higher isolation level.
3. Phantom Read
Definition: Within the same transaction, two range queries return different total data rows.
Cause: Other transactions insert/delete data and commit.
Difference from Non-Repeatable Read:
Non-repeatable read changes single row value; Phantom read changes data quantity and produces new records.
Solution: Use Serializable isolation level.

Four Transaction Isolation Levels
Read Uncommitted: Allow dirty read, non-repeatable read, phantom read
Read Committed: Solve dirty read; remain non-repeatable read & phantom read
Repeatable Read (MySQL Default): Solve dirty read & non-repeatable read; remain phantom read
Serializable: Eliminate all three anomalies; lowest performance

【1】脏读
含义：一个事务读到另一个事务未提交的数据。
问题：读到的数据可能回滚，数据无效。
解决：读已提交及以上隔离级别。

【2】不可重复读
含义：同一事务内，两次读同一条数据，结果不一样。
原因：其他事务对该行数据做了更新并提交。
区别脏读：读的是已提交的数据，数据有效，只是前后不一致。
解决：可重复读及以上隔离级别。

【3】幻读
含义：同一事务内，两次范围查询，行数不一致。
原因：其他事务做了新增/删除并提交。
区别不可重复读：不可重复读是单行值变；幻读是条数变、出现新数据。
解决：串行化隔离级别。

1.读未提交：脏读、不可重复读、幻读 全都有
2.读已提交：解决脏读，剩 不可重复读、幻读
3.可重复读(MySQL默认)：解决脏读、不可重复读，剩 幻读
4.串行化：全部解决，性能最差

请给我英语版本的表述
