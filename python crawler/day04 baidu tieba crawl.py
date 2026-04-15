import requests
import time

class Tieba:
    def __init__(self):
        self.url = 'https://tieba.baidu.com/f?'
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36'
        }

    def send(self, params):
        res = requests.get(self.url, headers=self.headers, params=params)
        return res.text

    def save(self, page, con):
        with open(f'{page}.txt', 'w', encoding='utf-8') as f:
            f.write(con)

    def run(self):
        #虽然很基础还是提一嘴，send save run都不是关键词
        word = input('请输入贴吧名字：')
        pages = int(input('请输入爬取页数：'))
        #input得到的是字符串，即使输入的是数字也是字符串，所以需要用int变成数字，但是如果输入的不是数字会报错

        for page in range(pages):
            params = {
                'kw': word,
                'pn': page * 50,  # 贴吧分页参数是 pn，不是 page
            }
            data = self.send(params)
            self.save(page + 1, data)  # 文件名从1开始更友好
            time.sleep(1)  # 增加延时，避免被封

te = Tieba()
te.run()
