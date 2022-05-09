<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style rel="stylesheet" type="text/css">
        body{
            background-color: gray;
            overflow: hidden;
        }
        div>div{
            position: relative;
            width: 2240px;
            height: 500px;
            margin: 0px;
            padding: 0px;
        }
        .card_list{
            position: relative;
            list-style: none;
            top:300px;
            width: 100%;
            height: 500px;
            background-color: red;
            
        }
        .card_area{
            display: block;
            padding: 0px;
            margin: 0px;
            width: 2240px;
        }
        .card_items{
            display: block;
            background-color: darkgray;
            width: 300px;
            height: 500px;
            float: left;
            text-align: center;
            margin-left: 10px;
            margin-right: 10px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .card_items>*{
            padding: 0px;
            margin: 0px;
        }

        .btn_zone{
                margin: 0px;
                padding: 0px;
                position:absolute;
                top:60%;
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
                
                /*height: 300px;
                width: 300px;
                border: 0px solid gray;
                background-color: rgb(120,120,120);
                */
            }
            #btn_after{
                display: block;
                margin-right: 10px;
                float: right;
                /*
                height: 600px;
                width: 300px;
                border: 0px solid gray;
                opacity: 0.3;
                */
            }
    </style>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        var cnt=1;
        window.onload=function(){
            var btnGoLeft=document.querySelector('#btn_before');
            var btnGoRight=document.querySelector('#btn_after');
            var cardMarginLeft=document.querySelector('.card_area');
            cardMarginLeft.style.marginLeft='0px';

            btnGoLeft.onclick=goLeft;
            btnGoRight.onclick=goRight;
            
        }

        function goRight(){
            var move=setInterval(function(){
                var cardMarginLeft=document.querySelector('.card_area');
                cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-10+'px';
                console.log('변수',cardMarginLeft);
                console.log('마진',cardMarginLeft.style.marginLeft);
            },10);
            setTimeout(function(){
                clearTimeout(move)
            },320);
            console.log('실행');
        }

        function goLeft(){
            var move=setInterval(function(){
                var cardMarginLeft=document.querySelector('.card_area');
                cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+10+'px';
                console.log('변수',cardMarginLeft);
                console.log('마진',cardMarginLeft.style.marginLeft);
            },10);
            setTimeout(function(){
                clearTimeout(move)
            },320);
            console.log('실행');
            // cnt--;
            // if(cnt==0){
            //     cnt=7;  
            //     var cardMarginLeft=document.querySelector('.card_area');
            //     //cardMarginLeft.style.marginLeft='-640px';
            //     var move=setInterval(function(){//-640
            //         cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-40+'px';
            //     },25);
            //     setTimeout(function(){
            //         clearTimeout(move)
            //     },400);
            // }else{
            //     var cardMarginLeft=document.querySelector('.card_area');
            //     //cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)+320+'px';
            //     //setInterver 통해서 실행하고 setTimeout으로 일정시간이 지나면 끝나도록 설정하기
            //     var move=setInterval(function(){
            //         cardMarginLeft.style.marginLeft=parseInt(cardMarginLeft.style.marginLeft)-10+'px';
            //     },10);
            //     setTimeout(function(){
            //         clearTimeout(move)
            //     },320);
            //     console.log(cnt);
            // }
            
        };
    </script>
</head>
<body>
    <div class="target">
        <div class="slider">
            <ul class="card_list">
                <li class="card_area">
                    <div class="card_items">
                        <h1>테스트1</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트2</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트3</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트4</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트5</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트6</h1>
                    </div>
                </li>
                <li>
                    <div class="card_items">
                        <h1>테스트7</h1>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="btn_zone">
        <button id="btn_before">버튼1</button>
        <button id="btn_after">버튼2</button>
    </div>
</body>
</html>