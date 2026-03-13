class crychic:
    def __init__(self, data):
        self.data = data
    def __getitem__(self, index):
#getitem就是定义对象在使用 [] 访问时应该返回什么。
        return self.data[index]
    def __setitem__(self, index, value):
        self.data[index] = value

c=crychic([1,2,3,4,5])

print(c[1])
print(c[::2])
print(c[:2])
#result=
2
[1, 3, 5]
[1, 2]

x=[1,2,3,4,5,6,7,8,9,10]
x=iter(x)
while True:
    try:
        i =x.__next__()
    except StopIteration:
        break

    print(i,end=' ')
#这相当于手动的for循环


class double:
    def __init__(self, start, stop):
        self.value = start - 1
        self.stop = stop

    def __iter__(self):
        return self
#这一步是告诉 Python：这个对象可以被 for 循环遍历。

    def __next__(self):

#for 循环每一次都会调用：next(d)也就是：d.__next__()

        if self.value == self.stop:
            raise StopIteration
        self.value += 1
        return self.value * 2


d = double(start=3, stop=4)

for i in d:
    print(i, end=' ')

#result：6 8

