

/*변수 선언*/

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');

var gender = document.querySelector('#gender');

var mobile = document.querySelector('#mobile');

var error = document.querySelectorAll('.error_next_box');



/*이벤트 핸들러 연결*/

pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
yy.addEventListener("focusout", isBirthCompleted);
mm.addEventListener("focusout", isBirthCompleted);
dd.addEventListener("focusout", isBirthCompleted);
mobile.addEventListener("focusout", checkPhoneNum);





/*콜백 함수*/

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[0].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[0].style.display = "block";
        
        pwMsg.style.display = "block";
        pwImg1.src = "resources/img/m_icon_not_use.png";
    } else {
        error[0].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "resources/img/m_icon_safe.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "resources/img/m_icon_check_enable.png";
        error[1].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "resources/img/m_icon_check_disable.png";
        error[1].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[1].style.display = "block";
    } 

    if(pw2.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        error[1].style.display = "block";
    }
}



function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        error[2].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
        error[2].style.display = "block";
    } else {
        isMonthSelected();
    }


    function isMonthSelected() {
        if(mm.value === "월") {
            error[2].innerHTML = "태어난 월을 선택하세요.";
        } else {
            isDateCompleted();
        }
    }

    function isDateCompleted() {
        if(dd.value === "") {
            error[2].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
        } else {
            isBirthRight();
        }
    }
}



function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[2].innerHTML = "생년월일을 다시 확인해주세요.";
    } else {
        checkAge();
    }
}


function checkPhoneNum() {
    var isPhoneNum = /([0-9]{2})([0-9]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[3].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }

    
}



