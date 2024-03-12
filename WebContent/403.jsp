<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="bootstrap-admin-vertical-centered">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon"> 
    <title>Error 403</title>
    <style>
        *{
            background-color:#121212;
            font-family: 'Times New Roman', Times, serif;
            column-gap: 8px;
            color:silver;
        }
        .data 
        {
            text-align: center;
        }
        .button{
            display: inline-block;
            margin-top: 32px;
            padding:12px 24px;
            background: rgba(48, 8, 8, 0.6);
            color:aliceblue;
            border-radius: 100px;
        }
        section{
            justify-content: center;
            align-items: center;
            display: flex;
            min-height: 46vh;
            
        }
        .bowl{
            position:relative;
            display: flex;
            width: 150px;
            height: 150px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
            border: 8px solid transparent;
            transform-origin: center;
            animation: animate 8s linear infinite;
        }
        @keyframes animate{
            0%{
                filter: hue-rotate(0deg);
                transform: rotate(0deg);
            }
            25%{
                transform: rotate(15deg);
            }
            50%{
                transform: rotate(0deg);
            }
            75%{
                transform: rotate(-15deg);
            }
            100%{
                filter: hue-rotate(360deg);
                transform: rotate(0deg);
            }
        }
        .bowl::before{
            content:'';
            position:absolute;
            top: -8px;
            left:50%;
            transform: translateX(-50%);
            width:50%;
            height: 13px;
            border:15px solid #444;
            border-radius: 50%;
            box-shadow: 0 10px #121212;
        }
        .liquid{
            position: absolute;
            top: 50%;
            left:-2px;
            right:-2px;
            bottom:-2px;
            background-color: dodgerblue;
            border-bottom-left-radius: 150px ;
            border-bottom-right-radius: 150px;
            filter:drop-shadow(0 0 20px rgb(11, 129, 246));
            transform-origin: top center;
            animation: animateLiquid 8s linear infinite;
        }
        @keyframes animateLiquid{
            0%{
                transform: rotate(0deg);
            }
            25%{
                transform: rotate(-20deg);
            }
            50%{
                transform: rotate(0deg);
            }
            75%{
                transform: rotate(20deg);
            }
            100%{
                transform: rotate(0deg);
            }
        }
        .liquid::before{
            content: '';
            position: absolute;
            top:-10px;
            width:138px;
            height:20px;
            background-color: rgb(25, 81, 136);
            border-radius: 50%;
            filter:drop-shadow(0 0 20px rgb(11, 129, 246));
        }
        .shadow{
            position:absolute;
            top:calc(65% + 80px);
            left:50%;
            transform: translate(-50%,-50%);
            width:150px;
            height: 30px;
            background-color: rgba(0,0,0,0.5);
            border-radius: 50%;
        }
        footer{
            text-align: flex-end;
            display:flex;
            justify-content: center;
            font-size: 14px;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <div class="data">
        <span>Eorror 403</span>
        <h1 class="title">Hey Buddy</h1>
        <p>The page you looking for is forbidden</p>
        <p>We are sorry</p>
        <a class="button" href="">Back Home</a>
    </div>
    <section>
        <div class="shadow">
        </div>
        <div class="bowl">
            <div class="liquid"></div>
        </div>
    </section>
    <footer>(023) 198-1098-6679 | 1169857181@qq.com</footer>
    </body>
    <script>
        export default{
            name:"page 403"
        }
    </script>
</body>
</html>
