def mygo(n,m):
    """
    在函数里可以用三个双引号注释内容，然后用help（你的函数名）来打开这段注释
    这是解释复杂函数的重要方式

    """
    return n*m
print(mygo(5,10))
print(help(mygo))

#在“：”后面甚至可以用中文注释，但最好别这么做
def mygo(n:欧内该,m:donk):
    return n*m
print(mygo(5,10))
print(help(mygo))
