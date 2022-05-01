<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        <link rel="stylesheet" type="text/css" href="css/base.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">
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
        </style>
        <script type="text/javascript">

        </script>
    </head>
    <body>
        <header>
            <a href="index.jsp"><img src="imgs/logo.jpg"></a>
            <form action="">
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
            <h1>index 페이지</h1>
        </header>
        <%@ include file="template/nav.jspf" %><!--네비바-->
        <div class="main_body">
            <div class="contents">
                <section>
                    <h1>섹션테스트</h1>
                </section>
                <article>
                    <h1>아티클</h1>
                </article>
            </div>
            <aside>
                <h1>aside</h1>
            </aside>
        </div>
        <%@ include file="template/footer.jspf" %><!--푸터-->
    </body>
</html>