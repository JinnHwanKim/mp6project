<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>MusicManager : 로그인</title>
    <link rel="stylesheet" href="resources/css/login.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/jquery-3.6.0.js"></script>
</head>

<body>
        <section class="login-form">
            <nav>
                <div class="logo">
                    <img class="main-profile" src="resources/img/MM.png" onclick="location.href='mainPage.do'" style="max-width: 130px;">
                </div>

                <ul class="nav-links" style="padding-inline-start: 0px;">
                    <li><a href="memberLogin.do">로그인</a></li>
                    <li><a href="memberInsert.do">회원가입</a></li>
                    <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
                </ul>

                <div class="burger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            </nav>


            <div class="log-icon">
                <img class="log-con" src="resources/img/로그인.png">
            </div>


            <form action="memberLogin.do" method="post" class="ogin">
                <div class="int-area">
                    <input type="text" name="m_id" id="id" autocomplete="off" required>
                    <label for="id">아이디</label>
                </div>
                <div class="int-area">
                    <input type="password" name="m_pw" id="pw" autocomplete="off" required>
                    <label for="id">비밀번호</label>
                </div>


                <div class="btn-area">
                    <button type="submit" onclick="location.href='memberLogin.do'">로그인</button>
                </div>
                <div class="btn-nonarea">
                    <button onclick="location.href='memberInsert.do'">회원가입</button>
                </div>
            </form>
            
            <script src="resources/js/app.js"></script>
        </section>




</body>
</html>