<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Result"%>
<%@page import="com.smhrd.domain.Members"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MusicManager : 플레이리스트</title>
  <link rel="stylesheet" href="resources/css/heart.css">
  <link rel="stylesheet" href="resources/css/list.css ">
  <script src="resources/js/jquery-3.6.0.js"></script>
</head>
<body>
	<%
		List<Result> list = (List<Result>) request.getAttribute("list");
		Members loginMember = (Members)session.getAttribute("loginMember");
	%>
<nav>
        <div class="logo">
            <a href="mainPage.do">
                <img class="main-profile" src="resources/img/MM.png" onclick="location.href='mainPage.do'"
                    style="max-width: 130px;">
            </a>
        </div>
        
    <c:choose>
         <c:when test="${loginMember != null}">
			<ul class="nav-links" style="padding-inline-start: 0px;">
			   <li><a href="memberLogout.do" >로그아웃</a></li>
			   <li><a href="memberUpdateGo.do">회원정보수정</a></li>
			   <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
			   <li><a href="mylistSelect.do">최근검색목록</a></li>
			</ul>
         </c:when>

         <c:otherwise>
			<ul class="nav-links" style="padding-inline-start: 0px;">
	            <li><a href="memberLogin.do">로그인</a></li>
	            <li><a href="memberInsert.do">회원가입</a></li>
	            <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
	        </ul>
         </c:otherwise>
    </c:choose>

        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>

    <script src="resources/js/app.js"></script>


  <conta class="frame">
    <div class="btn1">
      <button class="custom-btn btn" id='balgenre'>발라드</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='dancegenre'>댄스</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='rapgenre'>랩/힙합</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='rockgenre'>록/메탈</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='rnbgenre'>R&B/Soul</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='indigenre'>인디음악</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='trotgenre'>트로트</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='elecgenre'>일렉트로니카</button>
    </div>
    <div class="btn1">
      <button class="custom-btn btn" id='folkgenre'>포크/블루스</button>
    </div>
  </conta>
  <script src="resources/js/click.js"></script>
  <script src="resources/js/app.js"></script>

  <!-- 뮤직 리스트 -->
  <form action="searchSelect.do" method="post">
  <ul class="list" id="music_list">

    <!-- 로그인시 출력 -->
		<c:forEach var="i" items="${list }" varStatus="status">
            <li class="chartList ">
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
            </li>
		</c:forEach>
    <!-- 반복문 사용 -->

  </ul>
  </form>
  
  <!--더보기-->
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
<script>
	let loginMember = '${loginMember}';
</script>
<script src="resources/js/genre.js"></script> 
</body>
</html>