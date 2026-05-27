<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="gemini.png" type="image">
    <title>oner</title>
    <style>
      .father {
        width: 200px;
        height: 200px;
        background-color: red;
      }
      .son {
        width: 100px;
        height: 100px;
        background-color: blue;
      }
    </style>
</head>
<body>
    <div class="father">
        <div class="son"></div>
    </div>

    <script>
        //创建一个延迟器(异步)
        setTimeout(() => {
            console.log("延迟执行的代码");
        }, 1000);
        //dom对象
        //第一种方式
        //java的样式属性没有-，但是-后的字母要大写
        const father = document.querySelector(".father");
        father.style.backgroundColor = "green";
        father.style.width = "300px";
        //第二种方式
        //直接在``中写css样式
        father.style.cssText = `
            background-color: yellow;
            width: 400px;
        `;
        //通过innerHTML属性可以获取元素内部的html代码，也可以修改元素内部的html代码，用+可以在原有的基础上添加内容，不用+会覆盖原有的内容
        father.innerHTML += `<img src="photo/gemini.png" alt="gemini">`;
        //通过textContent属性可以获取元素内部的文本内容，也可以修改元素内部的文本内容，用+可以在原有的基础上添加内容，不用+会覆盖原有的内容
        father.firstElementChild.textContent = "这是一个图片";
        //通过classList属性可以获取元素的类名列表，也可以修改元素的类名列表，add方法添加类名，remove方法删除类名，toggle方法切换类名
        father.className = "father new-class"; //直接覆盖原有的类名
        father.classList.add("another-class"); //添加一个新的类名
        //创建一个新的元素
        const newElement = document.createElement("p");
        //在js里绑定事件
        <button onclick="alert('按钮被点击了')">点击我</button>
        //事件监听
        newElement.addEventListener("click", () => {
            alert("段落被点击了");
        });
        
    </script>
    
    
</body>
</html>
