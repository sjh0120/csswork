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