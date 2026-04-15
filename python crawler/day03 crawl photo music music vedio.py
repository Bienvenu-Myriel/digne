import requests

url='https://p1.music.126.net/3RANMlMM-udSsHyInyVbrQ==/528865105234307.jpg?param=140y140'

headers={
    'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0'
}
#发送请求获取响应
res = requests.get(url,headers=headers)
print(res.content)
#保存图片，wb是二进制，图片视频的本质是二进制
with open('网易云.jpg','wb') as f:
    f.write(res.content)
#简简单单爬个图片


import requests

url='https://m704.music.126.net/20260323214626/971e88344669bb2fabc0dca1e2864811/jdyyaac/075a/015b/065c/00d7bae26061e8c1c3b916403ed984ff.m4a?vuutv=NsX5yQajijh+2i76+oP4ecmqRbstKclpqbhfftMcm6rNwTZXp+2GXfv0P4GL+Yz0o0sU5EyGZw1ygu+LlE0PVbYKGPzB33XoACuPaBXM87k=&authSecret=0000019d1adb839002cd0aaf6c750006&cdntag=bWFyaz1vc193ZWIscXVhbGl0eV9leGhpZ2g'

res2=requests.get(url)
# print(res2.content)
with open('miku.mp3', 'wb') as f:
#音乐的格式是.mp3
    f.write(res2.content)
#简简单单的爬音乐，但是如果对方有加密就爬不了了

import requests

url='https://vodkgeyttp8.vod.126.net/cloudmusic/074f/core/2c91/f2b9c8c4a6852d38991ed718bdb4c516.mp4?wsSecret=d403e8d894fa400f007cb4095d238ccb&wsTime=1774272549'
res2=requests.get(url)
# print(res2.content)
with open('music_vedio.mp4', 'wb') as f:
#视频格式是.mp4
    f.write(res2.content)
#简简单单爬个视频
