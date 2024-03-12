<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mind Palace Register</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="static/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="static/assets/css/app.css">
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
</head>
<style>
		body{
			text-align:center;
		}
		main{
        	position: relative;
        }
        main.animated {
          opacity: 0;
          filter: blur(10px);
          transition: opacity 1s ease-in-out, filter 1s ease-in-out;
        }
        #mybg{
            margin: 0;
            padding: 0;
            position: fixed;
            width: 100%;
            height: 100%;
            top:0px;
        }
        .tpl-login{
        	background: inherit;
        }
</style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r134/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.clouds.min.js"></script>
        <script>
        //确保页面DOM加载完后执行js代码，否则会报找不到element
        window.addEventListener('DOMContentLoaded',()=>{
            VANTA.CLOUDS({
              el: "#mybg",
              mouseControls: true,
              touchControls: true,
              gyroControls: false,
              minHeight: 200.00,
              minWidth: 200.00,
              skyColor: 0xaeddf2,
              cloudColor: 0xb4c2d9,
              cloudShadowColor: 0x724b23,
              sunColor: 0x665118,
              sunGlareColor: 0xb1421c,
              sunlightColor: 0xd98330,
              speed: 0.60
            })
            setTimeout(() => {
                const main = document.querySelector('main')
                main.style.opacity = 1
                main.style.filter = 'blur(0px)'
            }, 200)
        })  
    </script>    
<body class="bootstrap-admin-without-padding" background="static/img/background.jpg" style="background-size:100% 100%;
	background-attachment: fixed;
	background-repeat:no-repeat"
>
<div id="mybg"></div>
	<main class="animated">
	
	
    <script src="static/assets/js/theme.js"></script>
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-title">Mind Palace Register</div>
                <span class="tpl-login-content-info">开启您的期刊篇章</span>
                <form class="am-form tpl-form-line-form" method="post" action="/books/RegisterServlet">
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="user-name" name="userid" autocomplete="off" required="required" placeholder="请输入学号">

                    </div>
					<div class="am-form-group">
                        <input type="password" class="tpl-form-input" id="user-name" name="password" autocomplete="off" required="required" placeholder="请输入密码">
                    </div>
					<div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="user-name" name="uname" autocomplete="off" required="required" placeholder="请输入姓名">
                    </div>
					<div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="user-name" name="email" autocomplete="off" required="required" placeholder="请输入邮箱">
                    </div>
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="user-name" name="phone" autocomplete="off" required="required" placeholder="请输入手机号">
                    </div>
                    
					
					<div class="am-form-group">

                        <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">注册</button>

                    </div>
                    <div class="am-form-group">

                        <button type="button" onclick="location.href='/books/index.jsp';" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">返回登录</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
</body>

</html>