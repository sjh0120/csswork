<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/base.css">
        <style rel="stylesheet" type="text/css">
            body{
                margin: 0px;
                padding: 0px;
                overflow: hidden;
            }
            
            .card_list{
                position: relative;
                top: 200px;
                width: 320px;
                height: 500px;
                margin: 0px auto;
                
                padding-top: 20px;
                padding-bottom: 10px;
                /*이 구간에선 opacity를 풀어야하는데*/
                border: 0.3px solid rgb(120,120,120);
                background-color: rgb(120,120,120);
                border-radius: 5%;
                
            }
            .card_area{
                position: relative;
                left: -640px;
                padding: 0px;
                margin: 0px;
                width: 2240px;
                /*width: 2240px;*/
                height: 500px;
                overflow:hidden;
                
                border: 0px solid black;
                text-align: center;
                opacity: 0.9;
                
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
            .card_items:hover{
                opacity: 0.9;
                background-color: black;
                color: white;
            }

            .card_items>h1{
                padding: 0px;
                margin: 0px;
                text-align: center;
            }

            .btn_zone{
                margin: 0px;
                padding: 0px;
                position:absolute;
                top:20%;
                width: 100%;
                border: 0px solid gray;
            }
            .btn_zone>*, .btn_zone>button>*{
                margin: 0px;
                padding: 0px;
            }
            #btn_before{
                display: block;
                margin-left: 10px;
                float: left;
                height: 300px;
                width: 300px;
                border: 0px solid gray;
                background-color: rgb(120,120,120);
            }
            #btn_after{
                display: block;
                margin-right: 10px;
                float: right;
                height: 600px;
                width: 300px;
                border: 0px solid gray;
                opacity: 0.3;
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
            
        }

        function goRight(){
            cnt++;
            if(cnt==4){
                cnt=1;
                var cardMarginLeft=document.querySelector('.card_area');
                var move=setInterval(function(){//+640
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+40+'px';
                },25);
                setTimeout(function(){
                    clearTimeout(move)
                },400);
            }else{
                var cardMarginLeft=document.querySelector('.card_area');
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
                    cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-40+'px';
                },25);
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
</html>