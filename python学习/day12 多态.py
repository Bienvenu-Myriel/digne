class bang:
    def __init__(self,name):
        self.name=name
    def  guitar(self):
        pass

class mujica(bang):
    def __init__(self,oblivionis):
        self.oblivionis=oblivionis
        super().__init__(" 真是高高在上呢！")
    def guitar(self):
        return  self.oblivionis +1

class mygo(bang):
    def __init__(self,anon_chihaya):
        self.anon_chihaya=anon_chihaya
        super().__init__("你爱姐这c和弦厉害吧？")
    def guitar(self):
        return self.anon_chihaya *  self.anon_chihaya

class crychic(bang):
    def __init__(self,mortis):
        self.mortis=mortis
        super().__init__("我没有觉得组乐队开心过，一次都没有")
    def guitar(self):
        return self.mortis  *  2

t1=mujica(5)
t2=mygo(5)
t3=crychic(5)
print(t1.name,t2.name,t3.name)
#在mujica mygo 和crychic里都没有.name的直接代码都是用super得到bang里的name代码，再用__init__()赋进去的
print(t1.guitar(),t2.guitar(),t3.guitar())
#所谓多态就是不管类的名字叫什么，要引出类的功能就只用一个名字比如.name或者.guitar
#本质就是一种类的用法
#result：
真是高高在上呢！ 你爱姐这c和弦厉害吧？ 我没有觉得组乐队开心过，一次都没有
6 25 10
