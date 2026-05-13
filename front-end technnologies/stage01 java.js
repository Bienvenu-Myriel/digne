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

       
    </script>
</body>
</html>
