import  random
#random模块就是随机模块

UAlist=[
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36'
    'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1'
    'Mozilla/5.0 (Linux; Android 11.0; Surface Duo) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36'
]

print(random.choice(UAlist))
#通过上面的方式可以随机调用user-agent更不容易被服务器识别为爬虫


# 输入的是:大魔王faker 实际在浏览器搜索的 “大魔王faker”---明文
# 服务器把“大魔王faker”加密成了 %E5%A4%A7%E9%AD%94%E7%8E%8Bfaker---密文
# 以%xx%xx%xx的就是密文

from urllib.parse import quote,unquote

# quote() 明文转密文
# unquote() 密文转明文

print(unquote('%E5%A4%A7%E9%AD%94%E7%8E%8Bfaker'))
print(quote('六冠王'))

发送带参数的请求
# 可以简化搜索内容，把一开始的url里的q前面和faker后面的内容直接删掉
# 保留'https://cn.bing.com/search?q=%E5%A4%A7%E9%AD%94%E7%8E%8Bfaker'就可以
import requests
url = 'https://cn.bing.com/search?q=%E5%A4%A7%E9%AD%94%E7%8E%8Bfaker'

headers={
    'Use-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0',
}
#注意两个容易错的点，headers用的是大括号{}，Use-Agent名字不能变，后面代码从User-Agent那复制
res=requests.get(url,headers=headers)
print(res.content.decode())
