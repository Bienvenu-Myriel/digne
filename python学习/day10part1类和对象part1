class mygo:
    player=5
    guitar='anon_chihaya'
    Bass='nagasaki_soyo'
    def play1(self):
        print("我是伦敦逃兵千早爱音")

    def play2(self):
        print(" 我是月之森寡妇长崎素世")

    def play3(self):
        print("我是鼓手椎名立希")

t1=mygo()
#创建实例对象 对象名 = 类名()
print(t1.player)
print(t1.guitar)
print(t1.Bass)
t1.play1()
t1.play2()
t1.play3()
t2.player=10
print(t2.player)
t1.mujica_leader="togaw_asakiko"
print(t1.mujica_leader)
#result：
5
anon_chihaya
nagasaki_soyo
我是伦敦逃兵千早爱音
 我是月之森寡妇长崎素世
我是鼓手椎名立希
10
togaw_asakiko
#这说明t2对类里的重定义不会影响t1，也不会影响原类,在t1中加入了mujica_leader也不会影响原数组
#使用类时千万不能忘记self参数，python之所以能知道是哪个对象在调用类就是依靠的self参数
#class就是创造了一个类
#可以使用from a（python文件）import b（b可以是变量可以说类，函数或者数组）就可以在导入的文件里用b了

class mygo:
    player=5
    guitar='anon_chihaya'
    Bass='nagasaki_soyo'
    def play1(self):
        print("我是伦敦逃兵千早爱音")

    def play2(self):
        print(" 我是月之森寡妇长崎素世")

    def play3(self):
        print("我是鼓手椎名立希")

class ave_mujica(mygo):
#在ave_mujica后面加括号就是相当于ave_mujica这个类是mygo的子类，mygo是父类
    def play1(self):
#在ave_mujica里若添加一个新的参数，调用 ave_mujica（子类）时可以直接调用这个参数而不影响mygo（父类），若为相同的参数名，则优先调用子类里的数据
        print("sakiko：真是高高在上呢")
a=ave_mujica()
print(a.guitar)
a.play1()
#result：anon_chihaya
sakiko：真是高高在上呢
#子类的player1优先于父类的同名变量
#如果在一个类里有多个类怎么判断同一名字的优先级呢？
class mygo:
    player=5
    guitar='anon_chihaya'
    Bass='nagasaki_soyo'
    def play1(self):
        print("我是伦敦逃兵千早爱音")

    def play2(self):
        print(" 我是月之森寡妇长崎素世")

    def play3(self):
        print("我是鼓手椎名立希")

class ave_mujica:
#注意这里的ave_mujica不是mygo的子类，这点非常重要！！！！！！！！！！
    mortis=100
    def play1(self):
        print("sakiko：真是高高在上呢")


class crychic(mygo,ave_mujica):
#这是crychic同时继承了两个类不是组合不要搞混了
#这里的mygo和ave_mujica是两个无关类，不是之前的父类和子类关系
    pass
b=crychic()
b.play1()
#result：我是伦敦逃兵千早爱音
#也就是说如果一个类同时继承多个类，但是多个类里有变量名字是完全相同的按从左到右顺序，以在crychic(mygo,ave_mujica) 中（）里左边的变量优先级更高
#另外补充一点继承的两个类中不能有一个是另一个的父类，因为子类已经完全覆盖了父类，代码会无法运行的，只用写子类就行了，或者不要让子类继承父类


#那么怎么让多个类并列呢？也就是类的组合
class mygo:
    player=5
    guitar='anon_chihaya'
    Bass='nagasaki_soyo'
    def play1(self):
        print("我是伦敦逃兵千早爱音")

    def play2(self):
        print(" 我是月之森寡妇长崎素世")

    def play3(self):
        print("我是鼓手椎名立希")

class ave_mujica:
    mortis=100
    def play1(self):
        print("sakiko：真是高高在上呢")


class crychic:
    def play4(self):
        print("我从来没有觉得组乐队开心过")

class bang:
    a=ave_mujica()
    m=mygo()
    c=crychic()
#这里这些类的括号 ()都至关重要,是赋值类本身和实例对象的区别
    def final(self):
        self.m.play1()
        self.a.play1()
        self.c.play4()
#别想着把m换回mygo或者mygo（）也能运行，完全不行，必须严格按照格式

        print("这里没有人类了")

t1=bang()
t1.final()
#result：我是伦敦逃兵千早爱音
sakiko：真是高高在上呢
我从来没有觉得组乐队开心过
这里没有人类了

#可以通过.__dict__来“自省”也就是看看这个类里面有什么
print(crychic.__dict__)

#result：{'__module__': '__main__', '__firstlineno__': 20, 'play4': <function crychic.play4 at 0x000002D261909B10>, '__static_attributes__': (), '__dict__': <attribute '__dict__' of 'crychic' objects>, '__weakref__': <attribute '__weakref__' of 'crychic' objects>, '__doc__': None}
