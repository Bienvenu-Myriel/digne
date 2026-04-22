<!-- <hr>是横线 -->
<!-- <br>是换行（删去空格） -->
'h1'是一级标题'h2'就是二级标题
<!-- <link rel="icon" href="favicon.ico" type="image/x-icon">这个是网页标签页的图标，href=""中的网址即是图片地址 type是可选则是否增加的属性 -->
<!-- <p>是段落 -->
<!-- <span>是不会分段的文本格式 -->
<img src="RolandFullBody.webp"title="Roland" alt="404 not found" width="250px">
 #src是资源的缩写，title的作用是鼠标放在图片上会出现解释框，alt则是图片加载失败出现的文字，width是宽度
<!-- <h2 style="color: rgb(255, 127, 127);"> -->
在<h2>的<h2后加上空格然后再加style="",在“”里可以加color改变字体颜色
 这是一个<audio src="" controls></audio>
 <!-- control是必须写的，它是控制器，如果在后面加一个loop（循环播放）muted（静音）autoplay（自动播放） -->
 colspan用于跨列，rowspan用于跨行

快捷方式
 div.x ，x就是class属性的名字
 div*5就是乘以5个div
 div{a}，{}里就是<div>a<div>
div{$}*9,$会被替换成1，然后递增到9
div#monesy，就是<div id="monesy"><div>
input:text,就是<input type="text" name="" id="">


选择器优先级：
行内选择器>id选择器>类选择器>元素选择器>通配选择器（符号）
css选择器中：
逗号 ,：表示并列，同时选中多个元素
空格：表示后代（选中元素内部的子子孙孙）
>：表示直接子元素（只选中儿子，不选孙子）

1. 基础选择器
标签选择器：直接写标签名
p div h1
类选择器：. + 类名
.box .btn
ID 选择器：# + ID 名
#header #nav
通配符选择器：匹配所有元素
*
2. 组合选择器
后代选择器：空格分隔（所有后代）
div p
子元素选择器：> 分隔（仅直接子级）
ul > li
相邻兄弟选择器：+ 分隔（紧挨着的下一个）
h1 + p
通用兄弟选择器：~ 分隔（同级所有后续元素）
h1 ~ p
3. 交集 / 并集选择器
并集选择器（分组）：逗号分隔
h1, h2, .box
交集选择器：无符号拼接（同时满足）
div.box（既是 div 又有 box 类）
4. 属性选择器
[属性名]：[target]
[属性=值]：[type="text"]
[属性^=值]：以值开头 [class^="btn"]
[属性$=值]：以值结尾 [src$=".jpg"]
[属性*=值]：包含值 [href*="baidu"]
5. 伪类 / 伪元素
伪类：:
:hover :active :first-child
伪元素：::
::before ::after ::first-line
总结
找类用.，找 ID 用#，找标签直接写；
后代用空格，子级用>，分组用,；
伪类单冒号，伪元素双冒号。
如何使用属性选择器来选择具有特定属性值的元素？
后代选择器和子元素选择器有什么区别？
伪类和伪元素有什么区别？

