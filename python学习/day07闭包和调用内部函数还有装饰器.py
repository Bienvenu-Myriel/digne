def mygo(deng):
    def ave_mujica(sakiko):
        return sakiko**deng    
#幂函数就是x**y表示x的y次方
    return ave_mujica
anon=mygo(2)
soyo=mygo(3)
#mygo（）中的（）里数字是几就是几次方
print(anon(5))
print(soyo(5))
#原理：函数闭包，即在def语句里嵌套def语句可以让外部的局部变量数据保留
#以下为豆包的例子：
def outer_func(x):
    # 外部函数的局部变量
    outer_var = x
    
    def inner_func(y):
        # 内部函数引用外部函数的局部变量outer_var
        return outer_var + y
    
    # 外部函数返回内部函数（不执行，只返回函数对象）
    return inner_func

# 调用外部函数，得到内部函数对象，此时outer_func已执行完毕
add_5 = outer_func(5)
# 调用内部函数，依然能访问到outer_func中定义的outer_var=5
result1 = add_5(3)  # 5+3=8
result2 = add_5(10) # 5+10=15
#outer_var=5 一直存在，不会丢！

print(result1)  # 输出：8
print(result2)  # 输出：15

#调用内部函数的方法
def mygo():
    print("这是函数的调用")

def mujica(func):
    print("func只是一个变量名")
    func()
#注意要想调用内部函数就是靠func（）这一步，而且func（）必须和def mujica（func）中的（）里的变量名一样
    print("如何调用内部函数呢？")

mujica(mygo)
#以下为闭包，调用函数和装饰器的共同使用
import time
def mygo(func):
    def anon():
        print("开始组建mygo")
        start=time.time()
        func() #调用函数
        end=time.time()
        print("mygo被soyo炸团了")
        print(f"一共就持续了{end-start}：.2f秒")
    return anon  #闭包

@mygo  #语法糖，（@后面跟函数名）等效于写了下面的函数变量名mujica=mygo（mujica）
def mujica():
    time.sleep(2)
    print("苦来兮苦已经解散了")

mujica()
