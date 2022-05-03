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
            }
            .card_list{
                width: 320px;
                height: 500px;
                margin: 0px auto;
                
                overflow: hidden;
                padding-top: 20%;
                padding-bottom: 10%;
            }
            .card_area{
                position: relative;
                left: -640px;
                padding: 0px;
                margin: 0px;
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
            .card_items:hover{
                opacity: 1.0;
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
                top:80%;
                background-color: aqua;
                width: 100%;
                border: 0px solid gray;
            }
            .btn_zone>*, .btn_zone>button>*{
                margin: 0px;
                padding: 0px;
            }
            #btn_before{
                margin-left: 10px;
                float: left;
            }
            #btn_after{
                margin-right: 10px;
                float: right;
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
                cardMarginLeft.style.marginLeft='0px';
            }else{
                var cardMarginLeft=document.querySelector('.card_area');
                cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-320+'px';
            }
            
        };

        function goLeft(){
            cnt--;
            if(cnt==0){
                cnt=3;  
                var cardMarginLeft=document.querySelector('.card_area');
                cardMarginLeft.style.marginLeft='-640px';
                console.log(cnt);
            }else{
                var cardMarginLeft=document.querySelector('.card_area');
                cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+320+'px';
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