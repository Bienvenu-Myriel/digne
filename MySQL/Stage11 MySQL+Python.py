import pymysql

# Obtain the connection object of MySQL database(获取到MySQL数据库的链接对象)
conn = pymysql.connect(
    host='localhost',   # localhost or ip
    port=3306,          # 3306 is default port(默认端口)
    user='root',        # username
    password='151431',  # password
    database='mygo',
    charset='utf8mb4'
)

# Get cursor object(获取游标对象)
cur = conn.cursor()

# Execute SQL statement with cursor object(使用游标对象执行sql语句（可以不写;）)
cur.execute('select * from player')

# Obtain query results
results:tuple = cur.fetchall()
# fetchall = fetch all records(获取所有查询结果)
# fetchone = fetch one record

for r in results:
    print(r)

# require commit confirmation (需要提交确认)
conn.commit()

# Close connection (关闭数据库连接)
cur.close()
conn.close()

# ======================================
也可以在构建数据库连接对象的时候增加一个autocommit = true的属性 (默认为false)，就不用手动确认了
