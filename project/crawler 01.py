模块1：config.py
STOCK_LIST=[
    "159941",#纳指ETF广发
    "513500",#标普500ETF博时
    "510300",#沪深300ETF华泰柏瑞
]

模块2:crawler.py
import requests

def get_secid(code):
    #对接接口协议
    if code.startswith(("0","3","1")):
        secid = f"0.{code}"
    #深市判断：0开头(主板), 3开头(创业板), 1开头(基金/ETF)
    elif code.startswith(("6","5")):
        secid = f"1.{code}"
    # 沪市判断：6开头(个股), 5开头(基金/ETF), 688开头(科创板)

    else:
        raise ValueError(f"Invalid code: {code}")

    url=f"http://push2.eastmoney.com/api/qt/stock/get?secid={secid}"

    headers={
        'User-Agent':"Mozilla/5.0"
    }

    response=requests.get(url,headers=headers,timeout=5)
    return response.json()


模块3:parser.py
def parse_stock(data):
    d = data.get("data", {})

    if not d:
        return None

    return {
        "代码": d.get("f57"),
        "名称": d.get("f58"),
        "最新价": d.get("f43", 0) / 100,
        "涨跌幅(%)": d.get("f170", 0) / 100,
        "成交量": d.get("f47"),
    }

模块4:main.py
import pandas as pd
from crawler import get_secid
from parser import parse_stock
from config import STOCK_LIST
import os

def main():
    results = []

    for code in STOCK_LIST:
        try:
            raw = get_secid(code)
            parsed = parse_stock(raw)

            if parsed:
                results.append(parsed)

        except Exception as e:
            print(f"{code} 抓取失败:", e)

    df = pd.DataFrame(results)

    os.makedirs("output", exist_ok=True)
    file_path = "output/stocks.xlsx"

    df.to_excel(file_path, index=False)

    print("完成，已保存到:", file_path)


if __name__ == "__main__":
    main()
