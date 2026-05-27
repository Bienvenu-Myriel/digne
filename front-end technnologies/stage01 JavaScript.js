<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript</title>
    <style>
        .zeus {
            width: 200px;   height: 200px;
            background-color: red;
        }
    </style>
</head>
<body>
   
    <div class="zeus" onclick="alert('do not touch me')"></div>
    <script>
        document.querySelector('.zeus').addEventListener('click', function() {
            alert('do not touch me');
        });
    </script>

    <script>
        let zeus = 0
        let gumayusi = 1
        let chovy = '2'
        let keria = 'char'
        let faker = '花'
        document.write('zeus: ' + zeus + '<br>')
        document.write(`guamyusi_类型为:${typeof gumayusi}` + '<br>');
        document.write(`chovy_类型为:${typeof chovy}` + '<br>');
        document.write(`keria_类型为:${typeof keria}` + '<br>');
        document.write(`faker_类型为:${typeof faker}` + '<br>');
        // $符号和python里的f字符串类似，可以在字符串里直接使用变量，前提是字符串要用反引号（`）包裹起来
        console.log(gumayusi+chovy)
        // java里的字符串能和数字通过+号拼接，这是python不能做到的
        console.log((7/3).toFixed(2))
        // .toFixed(2)方法可以将数字保留两位小数，返回一个字符串!!!
        7>6 && 7<8 ? console.log('7大于6且7小于8') : console.log('条件不成立')
        // ? : :格式的三元运算符，前面是条件，条件成立执行冒号前面的代码，条件不成立执行冒号后面的代码

       
    </script>
</body>
</html>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        table{
            border-collapse: collapse;
            width: 500px;
        }
        table td{
            border: 1px solid black;
            
            text-align: center;
        }
        table th{
            border: 1px solid black;
            background-color: gray;
            text-align: center;
        }
    </style>
</head>
<body>
   
    <script>
        let product_name = prompt("请输入选手名称");
        let product_price = prompt("请输入选手转会价格");
        let product_top = prompt("请输入选手top排名");
        let product_mvp = prompt("请输入选手mvp数");
        let product_major = prompt("请输入选手major数");
       document.write(`<table>
    <thead>
        <tr>
            <th>选手名称</th>
            <th>选手转会价格</th>
            <th>top排名</th>
            <th>mvp数</th>
            <th>major数</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>${product_name}</td>
            <td>${product_price}</td>
            <td>${product_top}</td>
            <td>${product_mvp}</td>
            <td>${product_major}</td>
        </tr>
    </tbody>
   </table>`)
    </script>
</body>
</html>
