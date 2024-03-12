<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="bootstrap-admin-vertical-centered">
<head>
	<meta charset="UTF-8">
	<title>Mind Palace</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
    <link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon">
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/jQuery/jquery-3.1.1.min.js"></script>
    <script src="static/ajax-lib/ajaxutils.js"></script>
    <script src="static/js/login.js"></script>
</head>
<script type="text/javascript">
        function toggleSound() {
                  var music = document.getElementById("bgmusic");//获取ID
                      console.log(music);
                      console.log(music.paused);
                  if (music.paused) { //判读是否播放
                      music.paused=false;
                      music.play(); //没有就播放
                  }
              }
      setInterval("toggleSound()",1);
      </script>



<style type="text/css">
        .alert{
            margin: 0 auto 20px;
            text-align: center;
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
        }
         #a {
            background-color: #f5fbff;
            background-image: url("1.png");
            background-size: 100% 100%;
            background-repeat: no-repeat;
            position: absolute;
            padding: 0px;
            width: 100%;
            height: 12%;
            top: 0;
            left: 0;
        }
        .anhulogo
        {
        width:20%;
        height:100%;
        float:left;
        padding:6px;
        margin-left:10px;
        }
        .anhulogo1
        {
        width:20%;
        height:100%;
        float:left;
        padding:15px;
        margin-left:50px;
        }
        .anhulogo2
        {
        height:100%;
        float:left;
        margin-left:200px;
        margin-top:30px;
        }
        a.link{
        z-index:20;
        display:inline-block;
        color:#61739d;
        font-size:15px;
        line-height:0px;
        position:relative;
        padding:10px;
        }
        a.link1{
        z-index:20;
        display:inline-block;
        position:relative;
        }
        .container{
            width: 100vw;
            height: 120vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-size: cover;/*设置背景图像可以拉伸*/
        }
        .bootstrap-admin-login-form{
        background: inherit;
        border-radius:20px;
        overflow:hidden;
        border: none;
        flex-direction:column;
        }
        .bootstrap-admin-login-form::before{
        	content:"";
            width: 400px;
            height: calc(100%);
            position:absolute;
            top:0px;
            left:500px;
            overflow: hidden;
            background: inherit;
            box-shadow: inset 0 0 0 200px rgba(255,255,255,0.5);
            filter: blur(4px);
            z-index:-1;
            border-radius:20px;
        }
        h1{
        text-align:center;
        font-family: 'Times New Roman', Times, serif;
        color: deepskyblue;
        }
        .form-control{
         	margin: 4px 0;
            height: 40px;
            border:none;
            background-color: rgba(255,255,255,0.7);
            border-radius: 4px ;
            padding: 0 14px;
            color: #3d5245;
        }
        .button-a:hover{
        	background-color: rgba(209,179,9,0.7);
        }
        .button-a{
        	cursor:pointer;
        	overflow:hidden;
        	transition:0.4s;
        }
        .button-b{
        	position:relative;
            width:100%;
            border:none;
            background-color: rgba(10, 107, 177, 0.3);
            border-radius: 4px ;
            color: #3d5245;
            text-align:center;
        }
        .button-c{
        	border:none;
        	margin-bottom: 10px;
        	width:100%;
        }
        a:link{
         text-decoration: none;
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
<audio id="bgmusic" src="static/backmusic/Gravit.mp3" autoplay="autoplay" loop="loop" preload="auto" hidden="true">fuck you</audio>
<div id="mybg"></div>


<div id="a">
	<div class="anhulogo">
        <a class="link1" href="https://www.ahu.edu.cn/" target="_blank"><img src="static/img/logo.png"></a>
    </div>
    <div class="anhulogo1">
        <a href="https://www.ahu.edu.cn/" target="_blank" display="inline-block" ><img src="static/img/motto.png"></a>
    </div>
	<div class="anhulogo2">
     <a class="link" href="https://www.ahu.edu.cn/" target="_blank">校园网站</a>
     <a class="link" href="https://mail.ahu.edu.cn/" target="_blank">邮箱</a>
     <a class="link" href="http://vpn.ahu.edu.cn" target="_blank">VPN</a>
     <a class="link" href="http://map.ahu.edu.cn/" target="_blank">校园地图</a>
     <a class="link" href="/books/bookshow.jsp" target="_blank">图书展示</a>
    </div>
</div>




<main class="animated">
<div class="container">
    <div class="row">
        <div class="col-lg-12">

            
            <form class="bootstrap-admin-login-form" method="post" action="/books/LoginServlet">
            
                 <% 
					String state = (String)session.getAttribute("state");
					session.removeAttribute("state");
					if(state!=null){
					%>
                 <label class="control-label" for="userid">账号或密码错误，请重新输入</label>
                 <%}%>
                 <h1>Mind Palace</h1>
                <div class="form-group">
                    <input type="text" class="form-control" id="userid" name="userid" required="required" placeholder="账号"/>
                    <label class="control-label" for="userid" style="display:none;"></label>
                </div>
                <div class="form-group"> 
                    <input type="password" class="form-control" id="password" name="password" required="required" autocomplete="off" placeholder="密码"/>
                    <label class="control-label" for="userid" style="display:none;"></label>
                </div>
                <button type="submit" class="button-a button-c">登录</button><br>
                <button class="button-a button-b"><a href="/books/register.jsp">注册</a></button>
            </form>
            
        </div>
    </div>
</div>
<div class="modal fade" id="modal_info" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="infoModalLabel">提示</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12" id="div_info"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btn_info_close" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</main>
<error-page>
	<error-code>404</error-code>
	<location>/books/404.jsp</location>
</error-page>

<error-page>
	<error-code>403</error-code>
	<location>/books/403.jsp</location>
</error-page>

<error-page>
	<error-code>500</error-code>
	<location>/books/500.jsp</location>
</error-page>

</body>
</html>