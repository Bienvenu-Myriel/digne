import requests

url='https://www.1688.com/zw/hamlet.html?scene=6&cosite=msdaohang'

headers={
    'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0',
    #虽然非常低级，但是必须提到在末尾记得加逗号。
    'Cookie':'ptid=0177000000092b872570070846b85ced; union={"amug_biz":"comad","amug_fl_src":"daohang","creative_url":"https%3A%2F%2Fwww.1688.com%2Fzw%2Fhamlet.html%3Fscene%3D6%26cosite%3Dmsdaohang","creative_time":1774527382754}; _user_vitals_session_data_={"user_line_track":true,"ul_session_id":"btfrq53xds","last_page_id":"www.1688.com%2F671e5mri8i8"}; cna=lxFMIo4OGW8CAXBt1jOavvA4; mtop_partitioned_detect=1; _m_h5_tk=b022772f1f48af20ed33c73ba79cfbd1_1774534584030; _m_h5_tk_enc=351956cd40d67dcadb9c3571de200758; cookie2=150d5830e8a45f0b35463f0a3f7c9f09; t=5b0229304ea977daefcbe779fa7588b9; _tb_token_=51e56d183e16e; __cn_logon__=false; tfstk=gsPoByXIQ8k54OxVsHl5H0dkKOXxNbGIAkdKvXnF3moX23d88jJqP4kUwbU8m9zZckQ7ykdn8mqy9YELt-O35yNRPXQSNzGITGIO6B47PXaAcZshDr7ERX0rFR8QPzGITiIO61U7Pudgas2r8q7mJ29yYkor3Eoj-3JzY0k20V0sTDrUYZ4qc2lEYklForoj8XoUYXkHNUo_TJPVb2g_DstvDS0oEcAKmBAhJ4DobzomlqNVAYmazmAFq_kR9Dmb_iB0l-ez2qZhsicQcJrE-o-VvYaUno0u2GxIv7a8t0UlUi4mM04EKkjHK42Tqkizz3JrSbmoQ7kf6waiL-Vmw7SBCrUm4AcYHts-pbquCcMPhiZ3o0EUZx-lDDeTk7k0bid0Av2_J2qlZQrN4b92QGfWOq7Lgp9IUqgmXa1dIrVyEJIdoZv9dYujScQcop9IUqgmXZbDCDMrlVmO.; xlly_s=1'
    #登陆后不用再登陆就是Cookie在起作用
}

response=requests.get(url,headers=headers)
print(response.text)



  # 导入爬虫必备库
import requests

# 1. 定义请求地址
url = "https://httpbin.org/post"

# 2. 定义POST表单参数
post_data = {
    "username": "miliai5370@gmail.com",
    "password": "123456"
}

# 3. 发送POST请求（data参数传表单数据）
response = requests.post(url, data=post_data)

# 4. 查看响应状态码（200表示请求成功）
print("请求状态码：", response.status_code)

# 5. 解析JSON响应数据
result = response.json()

# 6. 打印完整数据（查看结构）
print("\n完整响应数据：")
print(result)

# 7. 提取并打印提交的参数（核心练习）
print("\n提取的参数：")
print("用户名：", result["form"]["username"])

# session---自动处理Cookie
# session = requests.session() ---实例化session对象
#response = session.post(url,data=data)

#使用session访问登陆后的页面
#session.get(url.get)

# cookie池就类似于User-Agent池
#每一个cookie就是一个账号

#cookie有有效期，但是session没有

#cookie放在自己电脑的浏览器上（不够安全），但是session放在服务器上（更安全）
#session会占用服务器性能，所有有些情况下用coolie

# 代理ip分为正向代理和反向代理
# 正向代理是用户给客户端做代理让服务器无法识别到真实ip，被封也无影响。反向代理就是给服务器做代理，以保护服务器。


import requests
url='https://www.baidu.com/s'

headers={
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0'
}

#构建代理字典
proxies={
    #第一种写法
    'https':'https://12.34.56.78:9527',
    #第二种
    'https':'http://172.16.17.32:8080',
    #如果第一个ip无效的话会自动使用下一个ip
}
request=requests.get(url,headers=headers,proxies=proxies)

# 代理 IP = 你授权的 “网络中介”，你把所有流量都交给它，它就能看到、篡改你所有的网络数据。
# 所以，来路不明的代理 IP，本质上就是把你的网络 “裸奔” 给陌生人看。
print("密码：", result["form"]["password"])
