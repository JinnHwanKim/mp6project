<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Mylist"%>
<%@page import="com.smhrd.domain.Members"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MusicManager : 최근검색목록</title>
    <link rel="stylesheet" href="resources/css/style2.css">
    <link rel="stylesheet" href="resources/css/result.css">
    <link rel="stylesheet" href="resources/css/favorite.css">
    <link rel="stylesheet" href="resources/css/mylist.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="resources/js/more.js"></script>
    <script src="resources/js/favorite.js"></script>


    <style>
        
    </style>
</head>

<body>
<%
		Members loginMember = (Members)session.getAttribute("loginMember");
%>
    <nav>
        <div class="logo">
            <img class="main-profile" src="resources/img/MM.png" onclick="location.href='mainPage.do'" style="max-width: 130px;">
        </div>

        <ul class="nav-links" style="padding-inline-start: 0px;">
            <li><a href="memberLogout.do">로그아웃</a></li>
            <li><a href="memberUpdateGo.do">회원정보수정</a></li>
            <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
            <li><a href="mylistSelect.do">최근검색목록</a></li>
        </ul>

        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>

    <script src="resources/js/app.js"></script>

    <div class ="title">
        - 최근 검색 목록 - 
    </div>    

    <div id="contents" style="display : block; text-align: center;">
        <!-- 뮤직 리스트 -->
        <ul class="list" id="wrap">
        	<c:forEach var="i" items="${list }" varStatus="status">
	            <li class="chartList ">
	            	<div class="number">
	            	<h6><fmt:formatDate value="${i.result_date }" pattern="MM-dd hh:mm"/></h6>
	            	</div>
	                <div class="number"><c:out value="${i.song_num }"/></div>           
	                <div class="thumb">
	                <img class=" profile" src="${i.song_img }">
	                </div>
	                <div class="content">
	                    <p class="music-name"><c:out value="${i.song_title }"/></p>
	                    <span class="singer"><c:out value="${i.song_singer }"/></span>
	                </div>
	                <div class="content-button">
	                    <img class="play" src="resources/img/play.png"
	                    	onclick="location.href='https://www.youtube.com/results?search_query=${i.song_singer}+${i.song_title}+audio'">
	                </div>
			        <div class="number"><fmt:formatNumber type="percent"><c:out value="${i.result_score}" /></fmt:formatNumber></div>
			        <div>
                		<img src="resources/img/X.png" style="width:17px; height: 17px; cursor: pointer; margin:15px 3px 0 3px;"
                			onclick="location.href='mylistDelete.do?result_score=${i.result_score}'">
                	</div>
	            </li>
			</c:forEach> 
		</ul>
        <div style="text-align: center;">
            <button class="update w-btn w-btn-gra">더보기</button>
        </div>       
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script>
            var updateNum = 5;
            $('.list li:nth-child(n + ' + (updateNum + 1) + ')').addClass('is-hidden');
            $('.update').on('click', function () {
                $('.list li.is-hidden').slice(0, updateNum).removeClass('is-hidden');
                if ($('.list li.is-hidden').length == 0) {
                    $('.update').fadeOut();
                }
            });
        </script>
    </div>

</body>
</html>