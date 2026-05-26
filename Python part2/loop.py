# continue ：statement skips the rest of the current loop iteration and starts the next one immediately
# (终止当前这一轮循环，直接进入下一次循环)
values = [7, 6, 4, 7, 19, 2, 1] 
for i in values: 
  if i % 2 != 0: # 忽略奇数 
    continue 
 print (i/2)
