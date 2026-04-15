from sys import argv
from os.path import exists
from_file = r"B:\donk.txt"
to_file =r"B:\monesy.txt"
in_file=open(from_file,encoding="utf-8")
indata=in_file.read()
print(f"输出文件的大小为{len(indata)}字节")
print(f"输出文件是否存在{exists(to_file)}")
print("按ENTER继续，CTRL+C结束")
input()
out_file=open(to_file,"w",encoding="utf-8")
out_file.write(indata)
print("程序已完成")
out_file.close()
in_file.close()
#这是文件复制的代码
def spirit(*team_donk):
#*的作用是收“位置参数”，位置参数必须写在*前，把位置参数打包成一个“元组”，例：def monesy（a,b,*donk）
    shiro,donk = team_donk
    print(f"shiro: {shiro}, donk: {donk}")

def falcons(shiro,donk):
    print(f"shiro: {shiro}, donk: {donk}")
    
def falcon_donk(donk):
    print(f"donk: {donk}")

def falcon_monesy():
    print("hide")

spirit("donk","chopper")
falcons("donk","chopper")
falcon_donk("donk")
falcon_monesy()
#def语句第二行必须严格空出四个空格的缩进
#空函数：
def monesy()
    pass


def victor_hugo(paris,les_miserable):
    print(f"你有{paris}个mistress")
    print(f"你还有{les_miserable}个朋友")
    print("bro,那能让我们流亡时不用怕了")
    print("叫上大仲马吧。\n")

print("我们可以让门童去传消息：")
victor_hugo(50,30)

print("或许福楼拜那里也有消息：")
message = 20
negro = 30
victor_hugo(message,negro)

print("能帮助hugo先生的人有：")
victor_hugo(10*5,6-3)

print("人人都支持雨果先生")
victor_hugo(message*3,negro+5)

#result:
我们可以让门童去传消息：
你有50个mistress
你还有30个朋友
bro,那能让我们流亡时不用怕了
叫上大仲马吧。

或许福楼拜那里也有消息：
你有20个mistress
你还有30个朋友
bro,那能让我们流亡时不用怕了
叫上大仲马吧。

能帮助hugo先生的人有：
你有50个mistress
你还有3个朋友
bro,那能让我们流亡时不用怕了
叫上大仲马吧。

人人都支持雨果先生
你有60个mistress
你还有35个朋友
bro,那能让我们流亡时不用怕了
叫上大仲马吧。

