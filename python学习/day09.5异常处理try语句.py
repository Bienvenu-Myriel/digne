try:
    result=1/0
    print(result)
except ZeroDivisionError as e:
    print(e)
#在try：里如果检测出异常就执行except语句里的内容，而ZeroDivisionError就是一种错误类型，as是把错误提取出来给到变量e
try:
    "花花是fps天才"
except:
    print("才不是嘞")
else:
    print("他不是天才谁是")
#else语句就是try：语句没检测到错误时执行else语句里的内容
try:
    "花花是fps天才"
    "吹上天了都，廖总才是真天才，他是赋能哥"
except:
    print("才不是嘞")
else:
    print("他不是天才谁是")
finally:
    print("懂fps的都知道小辉才是真fps天才")
raise ValueError("这里没有人类了")  
#finally语句就是不论try：语句有没有检测出问题都会运行finally:语句里的内容
#raise语句就是直接手动生成错误，不论是否检测出来，不过raise语句必须生成存在的错误（就是你不能自定义一个错误，只能用python里存在的错误）
#补充一点：try语句也是可以嵌套的



s="天才花花"

assert s=="笨蛋花花"
#assert语句只能引发一个叫AssertionError的异常就是判断条件是否成立，若条件成立则跳过，若条件不成立则报错
