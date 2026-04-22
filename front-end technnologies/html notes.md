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

速记选择器使用方法：
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
一、动态伪类（链接 & 交互）
:link：未访问过的链接
:visited：已访问过的链接
:hover：鼠标悬停时
:active：鼠标按下瞬间
:focus：元素获得焦点（如输入框）
二、结构伪类（按位置选子元素）
:first-child：父元素的第一个子元素
:last-child：父元素的最后一个子元素
:nth-child(n)：父元素的第 n 个子元素
:nth-last-child(n)：从后往前数第 n 个
:only-child：独生子元素（没有兄弟）
:first-of-type：同类型里第一个
:last-of-type：同类型里最后一个
:nth-of-type(n)：同类型里第 n 个
三、否定、空元素、禁用等
:not(选择器)：排除某类元素
:empty：没有子元素、没有文本的空元素
:checked：单选 / 复选框被选中
:disabled：表单元素禁用
:enabled：表单元素可用
:required：必填表单
:optional：选填表单
四、目标伪类
:target：当前 URL 锚点指向的元素
总结
找类用.，找 ID 用#，找标签直接写；
后代用空格，子级用>，分组用,；
伪类单冒号，伪元素双冒号。


