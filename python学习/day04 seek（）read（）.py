from sys import argv
team_spirit=r"B:\donk.txt"
#访问文件地址时要在前面加r或者在"B:\\donk.txt"，目的是防止计算机看到\ndonk，中的\n触发换行
def top1(f):
    print(f.read())
#“f”只是个局部变量，可以是a也可以是b，c，d   其中read（）则是读取全部文件
#f.read（3）代表从指针处开始读三个字符，不足三个读有的，同理f.readline（5）也就是读指针开始的5个字符
def top2(f):
    f.seek(0)
#f.seek就是把指针强行拉回0（开头位置），f.seek（5）就是拉回第五个字符的位置，全称是.seek(offset, whence)：
#offset	偏移量（要移动的字符数，正数往后移，负数往前移）
#whence	基准位置（默认 0）：
#0 = 以文件开头为基准（最常用）
#1 = 以当前指针位置为基准
#2 = 以文件末尾为基准

def top3(zwyoo,f):
    print(zwyoo,f.readline())     #f.readline（）就是读一行的内容，f.read是读取全部内容，而f.readline就是read + line 读一行


monesy=open(team_spirit,encoding="utf-8")

print("首先，让我们打印整个文件：\n")
top1(monesy)

print("现在让我们倒回去，有点像磁带倒带。")
top2(monesy)

print("让我们打印三次：")

faker=1
top3(faker,monesy)

faker+=1
top3(faker,monesy)

faker+=1
top3(faker,monesy)
