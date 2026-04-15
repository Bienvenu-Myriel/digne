mygo=lambda y:y*y
print(mygo(3))
  #在lambda后输入变量名然后用：和后面的表达式分开
mygo=lambda y:y*y
x=[mygo(3),2,3]
print(x)
#也可以这么写：
p=[lambda d:d*d+3,2,3]
print(p[0](p[1]))
#把数组p的下标数字1的数字给了lambda表达式，得到结果2*2+3=7
#也就是说lambda可以放在很多地方使用

  def mygo():
    i=0
    while i<10:
        yield i   # 暂停并返回当前i的值，下次从这里继续，yield关键字就是专门提供这个功能的
        i+=1

for i in mygo():
    print(i)
#这个格式就是标准的生成器格式
