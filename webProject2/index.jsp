<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/base.css">
        <style rel="stylesheet" type="text/css">
            .card_area{
                width: 80%;
                height: 800px;
                background-color: blue;
                text-align: center;
                margin: 10% auto 10% auto;
            }
            .card_items{
                background-color: white;
                border: 1px solid black;
                display: inline-block;
                width: 30%;
                height: 70%;
                margin: 10% 0% 0% 0%;
                border-radius: 8%;
            }
        </style>
    </head>
    <body>
        <div class="card_area">
            <!--카드형태 항목들-->
            <div class="card_items">
                <h1>테스트1</h1>
            </div>
            <div class="card_items">
                <h1>테스트2</h1>
            </div>
            <div class="card_items">
                <h1>테스트3</h1>
            </div>
        </div>
    </body>
</html>