def mygo(n):
    if n==1 or n==0:
        return 1
    else:
        return n*mygo(n-1)

print("要求多大的阶层啊？")

n=int(input())
#input默认是字符串，要想输入的是整形或者浮点型必须要用int（）或者float（）的（）框住input（）
result=mygo(n)
print(result)
#下面这一段是递归的重要格式，必须记住，这是递归的思想
if n==1 or n==0:
        return 1
    else:
        return n*mygo(n-1)   
