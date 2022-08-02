<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Music Manager : 회원정보수정</title>
    <link rel="stylesheet" href="resources/css/re_id.css">
    <script src="resources/js/jquery-3.6.0.js"></script>
	<script src="resources/js/re_id.js"></script>
</head>

<body>
    <section class="login-form">
        <section class="login-form">
            <nav>
                <div class="logo">
                    <img class="main-profile" src="resources/img/MM.png" onclick="location.href='mainPage.do'"
                        style="max-width: 130px;">
                </div>

                <ul class="nav-links" style="padding-inline-start: 0px;">
                    <li><a href="memberLogout.do">로그아웃</a></li>
                    <li><a href="https://www.tjmedia.com/tjsong/song_search.asp">노래검색</a></li>
                    <li><a href="mylist.html">마이리스트</a></li>
                </ul>


                <div class="burger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            </nav>


            <!-- header -->
            <div id="header">
                <img class="profile" src="resources/img/회원가입.jpg" style="max-width: 150px; border-radius: 40%;">
            </div>


            <!-- wrapper -->
            <div id="wrapper">
                <form action="memberUpdate.do" method="post">
                <!-- content-->
                <div id="content">

                    <!-- PW1 -->
                    <div>
                        <h3 class="join_title"><label for="pswd1">비밀번호 변경</label></h3>
                        <span class="box int_pass">
                            <input type="password" name="m_pw" id="pswd1" class="int" maxlength="20"
                                placeholder="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.">
                            <span id="alertTxt">사용불가</span>
                            <img src="resources/img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                        </span>
                        <span class="error_next_box"></span>
                    </div>

                    <!-- PW2 -->
                    <div>
                        <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                        <span class="box int_pass_check">
                            <input type="password" id="pswd2" class="int" maxlength="20">
                            <img src="resources/img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                        </span>
                        <span class="error_next_box"></span>
                    </div>


                    <!-- BIRTH -->
                    <div>
                        <h3 class="join_title"><label for="yy">생년월일 변경</label></h3>

                        <div id="bir_wrap">
                            <!-- BIRTH_YY -->
                            <div id="bir_yy">
                                <span class="box">
                                    <input type="text" name="m_yy" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                                </span>
                            </div>

                            <!-- BIRTH_MM -->
                            <div id="bir_mm">
                                <span class="box">
                                    <select name="m_mm" id="mm" class="sel">
                                        <option>월</option>
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </span>
                            </div>

                            <!-- BIRTH_DD -->
                            <div id="bir_dd">
                                <span class="box">
                                    <input type="text" name="m_dd" id="dd" class="int" maxlength="2" placeholder="일">
                                </span>
                            </div>

                        </div>
                        <span class="error_next_box"></span>
                    </div>




                    <!-- MOBILE -->
                    <div>
                        <h3 class="join_title"><label for="phoneNo">전화번호 변경</label></h3>
                        <span class="box int_mobile">
                            <input type="tel" name="m_phone" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                        </span>
                        <span class="error_next_box"></span>
                    </div>


                    <!-- JOIN BTN-->
                    <div class="btn_area">
                        <input type="submit" value="변경" id="btnJoin">
                    </div>



                </div>
                <!-- content-->
                </form>
            </div>
            <!-- wrapper -->
            <script src="resources/js/re_id.js"></script>
            <script src="resources/js/app.js"></script>

</body>

</html>