<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        
        <link rel="stylesheet" type="text/css" href="css/base.css">
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        <style rel="stylesheet" type="text/css">
            header>img{
                float: left;
            }
            header>form{
                float: right;
            }
            header>form>div{
                display: inline-block;
            }
            header>form>#input_zone>*{
                text-align: right;
                margin-right: 5px;
            }
            header>form>#btn_zone{
                float: right;
            }
            header>form>#btn_zone>p>button{
                display: block;
                width: 80px;
            }
            header>h1{
                text-align: center;
                clear: both;
            }
            section{
                width: 100%;
                height: 800px;
                text-align: center;
            }

            section>.title_info{
                padding: 0px;
                width: 610px;
                height: 200px;
                margin: 10px auto;
                display: inline-block;

            }
            section>.main_info{
                padding: 0px;
                margin: 0px auto;
                width: 600px;
                height: 600px;
                border: 1px solid gray;
            }
            section>.title_info>#title_info_img{
                text-align: center;
                margin: 0px;
                padding: 0px;
                width: 20%;
                height: 200px;
                display: block;
                border: 1px solid gray;
                float: left;
                
            }
            section>.title_info>#title_info_txt{
                text-align: center;
                margin: 0px;
                padding: 0px;
                width: 79%;
                height: 200px;
                display: block;
                border: 1px solid gray;
                float: right;
            }
            section>.title_info>#title_info_txt>div{
                display: block;
                padding: 0px;
                margin: 0px;
                
                height: 50%;
                
            }
            section>.title_info>#title_info_txt>div>*{
                padding: 0px;
                margin: 0px;

                color: blue;
                width: 100%;
                height: 100%;
                
            }
            section>.title_info>#title_info_img>img{
                margin: 10px;
                padding: 0px;
                width: 80%;
                height: 80%;
                text-align: center;
            }
            
            section>.title_info>#title_info_img, section>.title_info>#title_info_txt{
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <header>
            <a href="index.jsp"><img src="imgs/logo.jpg"></a>
            <form>
                <div id="input_zone">
                    <p><label>id</label><input type="text" name="id" size="10"></p>
                    <p><label>pw</label><input type="password" name="pw" size="10"></p>
                </div>
                <div id="btn_zone">
                    <form>
                        <p><button type="submit">로그인</button></p>
                        <p><button>회원가입</button></p>
                    </form>
                </div>
            </form>
            <h1>소개 페이지</h1>
        </header>
        <%@ include file="template/nav.jspf" %>
        <section>
            <div class="title_info">
                <div id="title_info_img">
                    <img src="imgs/naver.png">
                </div>
                <div id="title_info_txt">
                    <div>
                        <p>이름 : 심재현</p>
                    </div>
                    <div>
                        <p>좌우명 : ~~~</p>
                    </div>
                </div>
            </div>
            <div class="main_info">

            </div>           
        </section>
        <%@ include file="template/footer.jspf" %>
    </body>
</html>