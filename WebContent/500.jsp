<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="bootstrap-admin-vertical-centered">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="static/img/icon_book.png" type="image/x-icon"> 
    <title>Error 500</title>
    <style>
        body {
            /*è®¾ç½®æ´ä½çèæ¯é¢è²*/
            background: black;
            /* ä½¿ç¨flexå¸å± è®©æå­å±ä¸­*/
            height: 100vh;
            text-align: center;
            display: grid;
            overflow: hidden;
            color:aliceblue;
            }
        .text {
            color: white;
            /*ä½ å¯ä»¥ä½¿ç¨èªå·±æ³è¦çå­ä½ï¼æè¿éä½¿ç¨çæ¯é»è®¤çéè¡¬çº¿ä½*/
            font-family: sans-serif;
            font-size: 100px;
            /*è¦æè¿ä¸ªå³èæå­å±è®¾ç½®æç¸å¯¹å®ä½ï¼ä¼ªåç´ çç»å¯¹å®ä½æä¼æ­£ç¡®å å å°ä¸èµ·*/
            position: relative;
            margin: 0 auto;
        }
        .text::before {
            content: attr(data-text);
            background: black;
            position: absolute;
            /*äº§çæå­çæå½±å°ææ*/
            text-shadow: 2px 0 red;
            
            clip-path: inset(0 0 0 0);
            animation: ani2 2s infinite linear alternate-reverse;
        }

        .text::after {
            content:attr(data-text);
            background: black;
            position: absolute;
            text-shadow: -2px 0 blue;
            left:-2px;
            clip-path: inset(0 0 0 0);
            animation: ani1 2s infinite linear alternate-reverse;
        }
        .text1 {
            color: white;
            /*ä½ å¯ä»¥ä½¿ç¨èªå·±æ³è¦çå­ä½ï¼æè¿éä½¿ç¨çæ¯é»è®¤çéè¡¬çº¿ä½*/
            font-family: sans-serif;
            font-size: 60px;
            /*è¦æè¿ä¸ªå³èæå­å±è®¾ç½®æç¸å¯¹å®ä½ï¼ä¼ªåç´ çç»å¯¹å®ä½æä¼æ­£ç¡®å å å°ä¸èµ·*/
            position: absolute;
            justify-items: center;
            left:50px;
            top:100px;
        }
        .text1::before {
            content: attr(info-text);
            background: black;
            position: absolute;
            /*äº§çæå­çæå½±å°ææ*/
            text-shadow: 2px 0 red;
            left: -2px;
            animation: ani4 2s infinite linear alternate-reverse;
        }
        .text1::after {
            content: attr(info-text);
            background: black;
            position: absolute;
            text-shadow: -2px 0 blue;
            left: 2px;
           
            animation: ani3 2s infinite linear alternate-reverse;
        }
        .text2 {
            color: white;
            /*ä½ å¯ä»¥ä½¿ç¨èªå·±æ³è¦çå­ä½ï¼æè¿éä½¿ç¨çæ¯é»è®¤çéè¡¬çº¿ä½*/
            font-family: sans-serif;
            font-size: 60px;
            /*è¦æè¿ä¸ªå³èæå­å±è®¾ç½®æç¸å¯¹å®ä½ï¼ä¼ªåç´ çç»å¯¹å®ä½æä¼æ­£ç¡®å å å°ä¸èµ·*/
            position: absolute;
            top:120px;
            left:400px;
            text-align: center;
        }
        .text2::before {
            content: attr(info-text);
            background: black;
            position: absolute;
            /*äº§çæå­çæå½±å°ææ*/
            text-shadow: 2px 0 red;
            left: -2px;
            animation: ani4 2s infinite linear alternate-reverse;
        }
        .text2::after {
            content: attr(info-text);
            background: black;
            position: absolute;
            text-shadow: -2px 0 blue;
            left: 2px;
           
            animation: ani3 2s infinite linear alternate-reverse;
        }
        .text3 {
            color: white;
            display: flex;
            /*ä½ å¯ä»¥ä½¿ç¨èªå·±æ³è¦çå­ä½ï¼æè¿éä½¿ç¨çæ¯é»è®¤çéè¡¬çº¿ä½*/
            font-family: sans-serif;
            font-size: 60px;
            /*è¦æè¿ä¸ªå³èæå­å±è®¾ç½®æç¸å¯¹å®ä½ï¼ä¼ªåç´ çç»å¯¹å®ä½æä¼æ­£ç¡®å å å°ä¸èµ·*/
            position: absolute;
            left:800px;
            top:190px;
            text-align: center;
        }
        .text3::before {
            content: attr(info-text);
            background: black;
            position: absolute;
            /*äº§çæå­çæå½±å°ææ*/
            text-shadow: 2px 0 red;
            left: -2px;
            animation: ani4 2s infinite linear alternate-reverse;
        }
        .text3::after {
            content: attr(info-text);
            background: black;
            position: absolute;
            text-shadow: -2px 0 blue;
            left: 2px;
           
            animation: ani3 2s infinite linear alternate-reverse;
        }
        @keyframes ani1 {
            0%{
            clip-path: inset(0 0 0 0);
           }
           5%{
            clip-path: inset(65px 0 29px 0);
           }
           15%{
            clip-path: inset(95px 0 17px 0);
           }
           20%{
            clip-path: inset(64px 0 30px 0);
           }
           25%{
            clip-path: inset(16px 0 34px 0);
           }
           30%{
            clip-path: inset(53px 0 89px 0);
           }
           35%{
            clip-path: inset(4px 0 21px 0);
           }
           40%{
            clip-path: inset(5px 0 98px 0);
           }
           45%{
            clip-path: inset(54px 0 91px 0);
           }
           50%{
            clip-path: inset(30px 0 6px 0);
           }
           55%{
            clip-path: inset(75px 0 6px 0);
           }
           60%{
            clip-path: inset(94px 0 87px 0);
           }
           65%{
            clip-path: inset(2px 0 88px 0);
           }

           70%{
            clip-path: inset(63px 0 52px 0);
           }
           75%{
            clip-path: inset(98px 0 16px 0);
           }
           80%{
            clip-path: inset(33px 0 22px 0);
           }
           85%{
            clip-path: inset(8px 0 50px 0);
           }
           90%{
            clip-path: inset(86px 0 70px 0);
           }
           95%{
            clip-path: inset(13px 0 91px 0);
           }
           100%{
            clip-path: inset(66px 0 16px 0);
           }

        }
        @keyframes ani2 {
           0%{
            clip-path: inset(0 0 0 0);
           }
           5%{
            clip-path: inset(14px 0 33px 0);
           }
           15%{
            clip-path: inset(99px 0 3px 0);
           }
           20%{
            clip-path: inset(68px 0 44px 0);
           }
           25%{
            clip-path: inset(8px 0 59px 0);
           }
           30%{
            clip-path: inset(62px 0 28px 0);
           }
           35%{
            clip-path: inset(10px 0 51px 0);
           }
           40%{
            clip-path: inset(52px 0 2px 0);
           }
           45%{
            clip-path: inset(54px 0 91px 0);
           }
           50%{
            clip-path: inset(30px 0 6px 0);
           }
           55%{
            clip-path: inset(75px 0 6px 0);
           }
           60%{
            clip-path: inset(42px 0 76px 0);
           }
           65%{
            clip-path: inset(66px 0 8px 0);
           }

           70%{
            clip-path: inset(89px 0 71px 0);
           }
           75%{
            clip-path: inset(80px 0 6px 0);
           }
           80%{
            clip-path: inset(42px 0 17px 0);
           }
           85%{
            clip-path: inset(88px 0 17px 0);
           }
           90%{
            clip-path: inset(24px 0 66px 0);
           }
           95%{
            clip-path: inset(57px 0 22px 0);
           }
           100%{
            clip-path: inset(89px 0 46px 0);
           }
        }
        @keyframes ani3 {
            0%{
            clip-path: inset(0 0 0 0);
           }
           5%{
            clip-path: inset(8px 0 9px 0);
           }
           15%{
            clip-path: inset(9px 0 43px 0);
           }
           20%{
            clip-path: inset(47px 0 38px 0);
           }
           25%{
            clip-path: inset(18px 0 34px 0);
           }
           30%{
            clip-path: inset(53px 0 19px 0);
           }
           35%{
            clip-path: inset(14px 0 49px 0);
           }
           40%{
            clip-path: inset(48px 0 27px 0);
           }
           45%{
            clip-path: inset(48px 0 9px 0);
           }
           50%{
            clip-path: inset(38px 0 16px 0);
           }
           55%{
            clip-path: inset(56px 0 50px 0);
           }
           60%{
            clip-path: inset(12px 0 53px 0);
           }
           65%{
            clip-path: inset(2px 0 88px 0);
           }

           70%{
            clip-path: inset(50px 0 47px 0);
           }
           75%{
            clip-path: inset(8px 0 19px 0);
           }
           80%{
            clip-path: inset(33px 0 22px 0);
           }
           85%{
            clip-path: inset(8px 0 50px 0);
           }
           90%{
            clip-path: inset(11px 0 43px 0);
           }
           95%{
            clip-path: inset(13px 0 18px 0);
           }
           100%{
            clip-path: inset(49px 0 16px 0);
           }

        }
        @keyframes ani4 {
           0%{
            clip-path: inset(0 0 0 0);
           }
           5%{
            clip-path: inset(14px 0 33px 0);
           }
           15%{
            clip-path: inset(10px 0 3px 0);
           }
           20%{
            clip-path: inset(15px 0 44px 0);
           }
           25%{
            clip-path: inset(8px 0 59px 0);
           }
           30%{
            clip-path: inset(26px 0 28px 0);
           }
           35%{
            clip-path: inset(10px 0 51px 0);
           }
           40%{
            clip-path: inset(52px 0 2px 0);
           }
           45%{
            clip-path: inset(54px 0 42px 0);
           }
           50%{
            clip-path: inset(30px 0 6px 0);
           }
           55%{
            clip-path: inset(17px 0 6px 0);
           }
           60%{
            clip-path: inset(42px 0 44px 0);
           }
           65%{
            clip-path: inset(14px 0 8px 0);
           }

           70%{
            clip-path: inset(89px 0 71px 0);
           }
           75%{
            clip-path: inset(80px 0 6px 0);
           }
           80%{
            clip-path: inset(42px 0 17px 0);
           }
           85%{
            clip-path: inset(8px 0 17px 0);
           }
           90%{
            clip-path: inset(24px 0 28px 0);
           }
           95%{
            clip-path: inset(57px 0 22px 0);
           }
           100%{
            clip-path: inset(53px 0 46px 0);
           }
        }
        .button{
            display: inline-block;
            margin-top: 10px;
            padding:12px 24px;
            background: rgba(4, 0, 51, 0.5);
            color:aliceblue;
            border-radius: 100px;
        }
        .ufo{
            justify-items: center;
            top:200px;
            filter:drop-shadow(0 -15px 20px rgb(38, 128, 217));
            animation: floaty 4s infinite alternate;
        }
        @keyframes floaty{
            0%{
                transform: translateX(-50px);
            }
            100%{
                transform: translateX(50px);
            }
        }
        .ufo-shadow{
            width: 110px;
            height: 24px;
            background-color: rgba(22, 29, 33, 0.7);
            border-radius: 50%;
            margin: 20px auto;
            filter: blur(3px);
        }
        .footer{
            text-align: flex-end;
            display:flex;
            justify-content: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="text" data-text="Error500">Error500</div>
    <div class="text1" info-text="Internal">Internal</div>
    <div class="text2" info-text="Server">Server</div>
    <div class="text3" info-text="Error">Error</div>
    <div><a class="button" href="">Back Home</a></div>
    <div class="ufo">
        <img src="static/img/UFO.png" alt="UFO">
        <div class="ufo-shadow"></div>
    </div>
    <footer>(023) 198-1098-6679 | 1169857181@qq.com</footer>
</body>
<script>
    export default{
        name:"page 500"
    }
</script>
</html>