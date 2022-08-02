<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicManager : 회원가입완료</title>
<link rel="stylesheet" href="resources/css/join_suc.css">
<script src = "resources/js/jquery-3.6.0.js"></script>
</head>
<body>

        <section class="login-form">
            <nav>
                <div class="logo">
                    <a href="mainPage.do">
                        <img class="main-profile" src="resources/img/MM.png" onclick="location.href='mainPage.do'" style="max-width: 130px;">
                    </a>
                </div>
            
            <ul class="nav-links" style="padding-inline-start: 0px;">
                <li><a href="memberLogin.do">로그인</a></li>
                <li><a href="memberInsert.do">회원가입</a></li>
                <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
            </ul>
    
            <div class="burger">
                <div class = "line1"></div>
                <div class = "line2"></div>
                <div class = "line3"></div>
            </div>
        </nav>



<section class = "success-form">

		<div class="int-area">
			<name="id" id="id">
			<label for = "id">환영합니다!</label>	
		</div>
        <div class="com-area">
			<name="id" id="co">
			<label for = "co"> Music Manager 가입이 완료되었습니다.</label>	
		</div>
        
        <div class="btn-area">
            <button onclick="location.href='memberLogin.do'">로그인</button>
        </div>
        <div class="btn-area1">
            <button type="submit" onclick="location.href='mainPage.do'">메인</button>
        </div>
        
        

</section>
<script src="resources/js/app.js"></script> 
</section>




</body>
</html>