import sys

script,input_encoding,error=sys.argv

def main(language_file,encoding,errors):
    line = language_file.readline()

    if line:
        print_line(line,encoding,errors)
        return main(language_file,encoding,errors)

def print_line(line,encoding,errors):
    next_lang=line.strip()
    raw_bytes=next_lang.encode(encoding,errors=errors)
    cooked_string=raw_bytes.decode(encoding,errors=errors)

    print(raw_bytes,'<==>',cooked_string)

languages =open(r"B:\donk.txt",encoding="utf-8")

main(languages,input_encoding,error)

#在终端中输入python monesy.py "utf-8" "strict"
#得到的b开头的内容可以用encode（）实现翻译
#用法为：
 mygo="高松灯主唱"
soyo=mygo.encode("utf-8")
print(soyo)
      #encode（）的（）里的"utf-8"可以不写，因为默认就是utf-8
