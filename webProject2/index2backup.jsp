<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style rel="stylesheet" type="text/css">
        body{
            background-color: gray;
        }
        .card_list{
            margin: 0px auto;
            width: 320px;
            background-color: aqua;
        }
        
        .card_area{
            position: relative;
            left: -640px;
            padding: 0px;
            width: 2240px;
            height: 500px;
            border: 0px solid black;
            text-align: center;
                
        }
        .card_items{
                display: block;
                padding: 0px;
                margin-left: 10px;
                margin-right: 10px;
                margin-top: 0px;
                margin-bottom: 0px;
                background-color: white;
                border: 0px solid black;
                border-radius: 8%;
                width: 300px;
                height: 500px;
                opacity: 0.5;
                float: left;
        }
    </style>
    <script type="text/javascript">
        var cnt=1;
        window.onload=function(){
            var btnGoLeft=document.querySelector('#btn_before');
            var btnGoRight=document.querySelector('#btn_after');
            var cardMarginLeft=document.querySelector('.card_area');
            cardMarginLeft.style.marginLeft='0px';

            console.log('test',cardMarginLeft);

            btnGoLeft.onclick=goLeft;
            btnGoRight.onclick=goRight;

            var mainCardZone=document.querySelector('.card_list');
            mainCardZone.addEventListener('mouseenter',function(e){
                e.stopPropagation();
                console.log('되나');
            });
        }
        function goRight(){
            cnt++;
            if(cnt==4){
                cnt=1;
                var cardMarginLeft=document.querySelector('.card_area');
                //cardMarginLeft.style.marginLeft='0px';
                var move=setInterval(function(){//+640
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+80+'px';
                },50);
                setTimeout(function(){
                    clearTimeout(move)
                },400);
            }else{
                var cardMarginLeft=document.querySelector('.card_area');
                //cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-320+'px';
                var move=setInterval(function(){
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-10+'px';
                },10);
                setTimeout(function(){
                    clearTimeout(move)
                },320);
            }
            
        };

        function goLeft(){
            cnt--;
            if(cnt==0){
                cnt=3;  
                var cardMarginLeft=document.querySelector('.card_area');
                //cardMarginLeft.style.marginLeft='-640px';
                var move=setInterval(function(){//-640
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-80+'px';
                },50);
                setTimeout(function(){
                    clearTimeout(move)
                },400);
            }else{
                var cardMarginLeft=document.querySelector('.card_area');
                //cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+320+'px';
                //setInterver 통해서 실행하고 setTimeout으로 일정시간이 지나면 끝나도록 설정하기
                var move=setInterval(function(){
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+10+'px';
                },10);
                setTimeout(function(){
                    clearTimeout(move)
                },320);
                console.log(cnt);
            }
            
        };

        
        
    </script>
</head>
<body>
    <body>
        <div class="card_list">
            <div class="card_area">
                <!--카드형태 항목들-->
                <div class="card_items">
                    <h1>테스트2</h1>
                </div>
                <div class="card_items">
                    <h1>테스트3</h1>
                </div>
                <div class="card_items">
                    <h1>테스트1</h1>
                </div>
                <div class="card_items">
                    <h1>테스트2</h1>
                </div>
                <div class="card_items">
                    <h1>테스트3</h1>
                </div>
                <div class="card_items">
                    <h1>테스트1</h1>
                </div>
                <div class="card_items">
                    <h1>테스트2</h1>
                </div>
            </div>
        </div>
        <div class="btn_zone">
            <button id="btn_before">버튼1</button>
            <button id="btn_after">버튼2</button>
        </div>
    </body>
</body>
</html>