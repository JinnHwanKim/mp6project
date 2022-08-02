<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Result"%>
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
    <title>MusicManager : 메인페이지</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://markjivko.com/dist/recorder.js"></script>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/record.css">
    <link rel="stylesheet" href="resources/css/load.css">
    <link rel="stylesheet" href="resources/css/heart.css">   
    <script>
        jQuery(document).ready(function () {
            var $ = jQuery;
            var myRecorder = {
                objects: {
                    context: null,
                    stream: null,
                    recorder: null
                },

                init: function () {
                    if (null === myRecorder.objects.context) {
                        myRecorder.objects.context = new (
                            window.AudioContext || window.webkitAudioContext
                        );
                    }
                },

                start: function () {
                    var options = { audio: true, video: false };
                    navigator.mediaDevices.getUserMedia(options).then(function (stream) {
                        myRecorder.objects.stream = stream;
                        myRecorder.objects.recorder = new Recorder(
                            myRecorder.objects.context.createMediaStreamSource(stream),
                            { numChannels: 1 }
                        );
                        myRecorder.objects.recorder.record();
                    }).catch(function (err) { });
                },


                stop: function (listObject) {
                    if (null !== myRecorder.objects.stream) {
                        myRecorder.objects.stream.getAudioTracks()[0].stop();
                    }

                    if (null !== myRecorder.objects.recorder) {

                        myRecorder.objects.recorder.stop();

                        // Validate object
                        if (null !== listObject
                            && 'object' === typeof listObject
                            && listObject.length > 0) {
                            // Export the WAV file
                            myRecorder.objects.recorder.exportWAV(function (blob) {
                            	var connectText = '<div style="text-align: center;"><h5>분석버튼을 클릭하시면 분석을 시작합니다.</h5></div><div style="text-align: center;"><h5>(분석은 약 15초 정도 소요됩니다.</h5></div>';
                                var url = (window.URL || window.webkitURL)
                                    .createObjectURL(blob);

                                // Prepare the playback
                                var audioObject = $('<audio controls></audio>')
                                    .attr('src', url);

                                // Prepare the download link
                                var downloadObject = $('<a class="down">&#9660;</a>')
                                    .attr('href', url)
                                    .attr('download', new Date().toUTCString() + '.wav');

                                // Prepare the connect link
                                var connectObject = $('<input type="button" class="connect" onclick="location.href=`http://121.147.52.4:9000/result`" value="분석"></input>')
                                    .attr('href', url)
                                var data = new FormData();
                                if ('$loginMember.m_id' == null) {
                                    data.append('data', blob, 'result.wav');
                                } else {
                                    data.append('data', blob, 'result' + ' ' + '${loginMember.m_id}' + ' ' + '.wav');
                                }
                                $.ajax({
                                    type: 'POST',
                                    url: 'http://121.147.52.4:9000/result',
                                    data: data,
                                    contentType: false,
                                    processData: false,
                                }).done(function (data) {
                                    console.log(data);
                                });
                                // Wrap everything in a row
                                var holderObject = $('<div class="row"></div>')
                                    .append(audioObject)
                                    .append(connectObject)
                                    .append(connectText)

                                // Append to the list
                                listObject.html(holderObject);
                            });
                        }
                    }
                }

            };

            // Prepare the recordings list
            var listObject = $('[data-role="recordings"]');

            // Prepare the record button
            $('[data-role="controls"] > button').click(function () {
                // Initialize the recorder
                myRecorder.init();

                // Get the button state 
                var buttonState = !!$(this).attr('data-recording');

                // Toggle
                if (!buttonState) {
                    $(this).attr('data-recording', 'true');
                    myRecorder.start();

                    setTimeout(function () {
                        myRecorder.stop(listObject);
                    }, 31000);
                } else {
                    $(this).attr('data-recording', '');
                    myRecorder.stop(listObject);
                }


            });
        });
    </script>
    <!-- jquery 이미지 생성 -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery("#btn").click(function () {
                if (jQuery("#displayDiv").css("display") == "none") {
                    jQuery("#displayDiv").css("display", "block");
                    setTimeout(function () {
                        jQuery("#displayDiv").css("display", "none");
                    }, 31000);
                }
                else {
                    jQuery("#displayDiv").css("display", "none");
                }
            });
        });
    </script>
</head>

<body>

<%
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

    <main>
        <div class=record-button>
            <div class="holder">
                <div data-role="controls">
                    <button id="btn"></button>
                </div>

                <div id="displayDiv" style="display:none;">
                    <div id="equalizer-loading">
                        <span style="background-color: rgb(27,22,248);"></span>
                        <span style="background-color: rgb(73,18,236);"></span>
                        <span style="background-color: rgb(104,15,227);"></span>
                        <span style="background-color: rgb(133,12,220);"></span>
                        <span style="background-color: rgb(165,9,212);"></span>
                        <span style="background-color: rgb(209,5,200);"></span>
                    </div>
                    <div style="text-align: center;">
                        <h5>정확한 분석을 위해 30초 동안 노래하세요</h5>
                    </div>
                </div>
                <div data-role="recordings" style="margin-top:100px;"></div>
            </div>
        </div>
			
    </main>
    
        <!-- 인기 차트-->
        <div style="text-align:center;">
            <div class="bottom">
                <div class="bottom-first">
                    <div class="fav">인기차트</div>
                    <a class="mon" id="month5">5월</a>
                    <a class="mon" id="month6">6월</a>
                    <a class="mon" id="month7">7월</a>
                </div>
            </div>
        </div>

		<div>
	        <ul class="list" id="music_list">
	
	        </ul>
        </div>
<script>
	let loginMember = '${loginMember}';
</script>
<script src="resources/js/heart.js"></script> 
<script src="resources/js/popula5.js"></script>
<script src="resources/js/popula6.js"></script>
<script src="resources/js/popula7.js"></script>
</body>
</html>