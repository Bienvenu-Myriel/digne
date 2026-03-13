模块的导入
1. import sys (导入整个模块)
当你使用这种方式时，你将整个 sys 模块引入了当前命名空间。
2. from sys import argv (导入特定属性)
这种方式只将 argv 这一个特定的变量提取到当前的命名空间。
3.跨文件夹导入模块：
import sys
sys.path.append("/你/的/完整/路径/文件夹")
import 你的模块

print()里f"真是高高在上{变量名}:.2f"这个:.2f就是两位小数

打开本地文件（包含中文）：
with open(save_file_path, 'w', encoding='utf-8') as file:
#encoding='utf-8'确保中文字符（如角色名字）能正确保存，不会出现乱码,with 语句: 这是一个“上下文管理器”。它的好处是：当缩进内的代码执行完后，Python 会自动关闭文件。即使中途报错，它也能确保文件被正确关闭，防止数据丢失或文件占用。  

1.'w' 代表 "Write"（写入模式）：  
它的逻辑是：如果文件不存在，就创建一个；如果文件已经存在，它会先清空（Truncate）该文件的所有内容，然后从第一行开始重新写入。  
2.'a' 代表 "Append"（追加模式）：  
它的逻辑是：打开文件后，文件指针会直接跳到文件的末尾。你新输入的内容会紧跟在旧内容后面，不会破坏原有的数据。  
把 'w' 改成 'a'。就从写入模式变成了追加内容模式  

字典（day02 第40行）
user_lines.items 在变量后加上后缀.items  
写法,循环得到的内容  
for x in user_lines:,"x 是 ""睦"" (只有名字)"  
for x in user_lines.values():,"x 是 ""我也没觉得开心过"" (只有台词)"  
"for k, v in user_lines.items():",k 是名字，v 是台词 (两者都有)  

语法糖（装饰器语法）：
@mygo
def mujica():
    ...
    等效于
def mujica():
    ...

mujica = mygo(mujica)

类的知识点：
class mygo：
    pass
    
继承的语法class 子类名(父类名):
如果子类写了 和父类同名的方法，子类的方法会覆盖父类的方法
其实 self 不是关键字，只是 Python 的约定（理论上self可以是任何名字，但是最好最好用self）
