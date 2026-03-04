模块的导入
1. import sys (导入整个模块)
当你使用这种方式时，你将整个 sys 模块引入了当前命名空间。
2. from sys import argv (导入特定属性)
这种方式只将 argv 这一个特定的变量提取到当前的命名空间。

打开本地文件（包含中文）：
with open(save_file_path, 'w', encoding='utf-8') as file: #encoding='utf-8'确保中文字符（如角色名字）能正确保存，不会出现乱码,with 语句: 这是一个“上下文管理器”。它的好处是：当缩进内的代码执行完后，Python 会自动关闭文件。即使中途报错，它也能确保文件被正确关闭，防止数据丢失或文件占用。
