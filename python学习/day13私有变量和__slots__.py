#python没有真正意义上的私有变量，_var	单下划线（伪私有）	约定俗成的 “私有”，不建议类外访问，但实际可访问，__var	双下划线（强私有）	解释器会重命名，类外直接访问失败，子类也无法直接访问。
# 父类：定义双下划线私有变量 + 公有访问方法
class Parent:
    def __init__(self):
        self.__device = "父类核心私有数据"  # 双下划线私有变量

    # 父类提供的公有方法（getter），用于访问私有变量
    def donk(self):  #访问私有变量的方法名为donk
        return self.__device

    # 可选：公有方法（setter），用于修改私有变量（带校验）
    def monesy(self, new_value):
        if isinstance(new_value, str) and len(new_value) > 0:
            self.__device = new_value
        else:
            raise ValueError("值必须是非空字符串")

# 子类：继承父类，通过父类的公有方法访问/修改私有变量
class Child(Parent):
    def dupreeh(self):
        # 子类中通过self调用父类的公有方法 → 合法访问父类私有变量
        return self.donk()

    def zywoo(self, new_val):
        # 子类中通过self调用父类的setter方法 → 合法修改父类私有变量
        self.monesy(new_val)

# 测试
child = Child()
# 访问父类私有变量
print(child.dupreeh())  # 输出：父类核心私有数据

# 修改父类私有变量
child.zywoo("子类修改后的父类私有数据")
print(child.dupreeh())  # 输出：子类修改后的父类私有数据

#私有变量需要通过直接包含这个变量的类来访问，不能通过子类直接访问但可以在子类里通过父类的公有方法访问
class mygo:
    __slots__=["anon","soyo"]
    def __init__(self,anon,soyo):
        pass
#由于__slots__相当于属性白名单，所有即使在__init__()的()里写变量的名字也可以，也不用写self.变量=变量，当然写了也没有影响


t1=mygo(1,0)
#这里给anon和soyo的两个数字是因为要初始数值不然会报错，后续会覆盖所有没影响
t1.anon="soyo桑，love"
t1.soyo="这个不需要了"
print(t1.soyo)
print(t1.anon)

try:
    t1.tomorin="gugugaga"
#说明使用了__slots__后不能动态的添加一个属性，即使是在__init__(self)里手动添加也不行，因为__slots__已经规定了这个类只能有两个属性
#通过 __slots__（固定属性）可以比__dict__（动态字典）更省空间
except AttributeError as e:
    print("报错信息：", e)
