<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="bootstrap-admin-vertical-centered">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon"> 
    <title>Error 404</title>
    <style>
        body{
            background-color: rgb(232, 64, 46);
            display: grid;
            height: 100vh;
            font-size: 18px;
            font-family: 'Times New Roman', Times, serif;
            column-gap: 8px;
        }
        .data{
            text-align: center;
        }
        .title{
            font-size: 38px;
            margin:12px;
        }
        .button{
            display: inline-block;
            margin-top: 32px;
            padding:12px 24px;
            background: #161513;
            color:aliceblue;
            border-radius: 100px;
        }
        .ghost{
            margin-top: 80px;
            justify-self: center;
            animation: floaty 1.8s infinite alternate;
        }
        @keyframes floaty{
            0%{
                transform: translateY(0);
            }
            100%{
                transform: translateY(20px);
            }

        }
        footer{
            text-align: flex-end;
            display:flex;
            justify-content: center;
            font-size: 14px;
        }
        .face-shadow{
            width: 120px;
            height: 24px;
            background-color: rgba(84, 26, 26, 0.689);
            border-radius: 50%;
            margin: 20px auto;
            filter: blur(6px);
            animation: shadow 1.8s infinite alternate;
        }
        @keyframes shadow{
            0%{
                transform:scale(1,1)
            }
            100%{
                transform:scale(0.8,0.8)
            }
        }

    </style>
</head>
<body>
    <div class="main">
    <div class="data">
        <span>Error 404</span>
        <h1 class="title">Hey Buddy</h1>
        <p>We can't find the page you wanted</p>
        <p>We are sorry</p>
        <a class="button" href="">Back Home</a>
        <div class="ghost">
            <img src="static/img/扮鬼脸.png" alt="">
            <div class="face-shadow"></div>
        </div>
    </div>
    <footer>(023) 198-1098-6679 | 1169857181@qq.com</footer>
    </div>
</body>
<script>
    export default{
        name:"page 404"
    }
</script>

</html>