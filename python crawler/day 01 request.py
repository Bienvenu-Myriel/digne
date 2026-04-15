import requests
url="http://www.baidu.com/"
response = requests.get(url)
#使用request发送请求
print(response.text)
#response.text获取的是字符串
#response.content获取的是二进制

huahua='世界第一公主殿下'
result=huahua.encode()
#将字符串转换为bytes类型（二进制）
print(result)
#result：b'\xe4\xb8\x96\xe7\x95\x8c\xe7\xac\xac\xe4\xb8\x80\xe5\x85\xac\xe4\xb8\xbb\xe6\xae\xbf\xe4\xb8\x8b'

misae=b'\xe4\xb8\x96\xe7\x95\x8c\xe7\xac\xac\xe4\xb8\x80\xe5\x85\xac\xe4\xb8\xbb\xe6\xae\xbf\xe4\xb8\x8b'
results=misae.decode()
#.decode解码，把二进制转换为字符串

#response的其他属性：
#response.status_code响应状态码
#response.request.headers响应对应的请求头
#response.headers响应头
#response.request.cookies响应对应的cookie
#response.cookies响应的cookie（经过了set-cookies动作）

import  requests
url='https://mag.bynez.com/wp-content/uploads/2022/11/Marcel_Proust-Nadar_HD-redimmensionne.jpeg'

response = requests.get(url)
print(response.content)
# 图片本质上是二进制数据（binary data），不是文本。图片、音频、视频也是所以用content
#文本内容（HTML、JSON、字符串）用txt
with open('marcel.jpg', 'wb') as f:
#wb是保存二进制，如果要保存文本就去掉b剩下'w'就行了
    f.write(response.content)
#这里.jpg前的就是保存下来文件的名字
print(response.request.headers)
#打印响应对象的请求头

import  requests
url='https://www.baidu.com/'

headers={
    'user-agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36'
}
#headers参数接受字典形式的请求头，请求头字段名为key，值为value
response=requests.get(url,headers=headers)
print(response.content.decode())
#添加use-agent的目的是人服务器认为是用户在发送请求，而不是爬虫
#建议写任何爬虫都带上user-agent
print(len(response.content.decode()))
