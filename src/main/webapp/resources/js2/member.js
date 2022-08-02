// 페이지가 열릴때, 실행
// document가 준비할 때ready(안에있는 함수를 실행시켜라)
// 기존 $(document).ready( function() { } )
// 화살표 함수(lamda)
// "(x) =>" == "function( x )"
// 쓰는경우 = 안에 function을 선언할 때 사용 외부는 그대로 function() 사용
$(document).ready( () => {
	// 간혹 람다식 아래 빨간 선이 표시 될 경우 무시해도 된다.
	// ajax통신, 글 데이터 가져오기
	// 테스트->console.log("hello")
	// ajax는 매개변수로 javascript {}중괄호 안에 객체를 받는다
	$.ajax({
		url : 'boardList.do', // 어디로 요청을 보낼 것인가?
		type : 'post', // GET? POST?
		data : {
			// 'key' : : value 형태다 -> 보내줄 데이터
			// 'key(input태그 name)'(key는 문자열로 넣어주는 것이 좋다.)
			// key를 문자열 변형 안했을때 key를 변수명으로 인식하는 경우가 있다.
			// jackson databind가  자동으로 Board변수를 키값으로 변환한다 사이트 F12 콘솔로그 
			
		},
		// 가끔 'json' 데이터타입을 쓸때가 있다.
		// dataType : 'json', // 응답받는 데이터가 어떤 형태인지
		success : function(res){
			// 요청이 성공했을때 실행되는 Call back 함수
			// Call back 함수 : 특정한 이벤트가 실행되었을 때 발생하는 함수.
			// ★function(res)의 res는 response와 가깝다★ 제일 중요
			// res --> 응답받는 데이터가 담기는 변수
			// ★res를 출력 해보는 것이 좋다.
			console.log(res);
			
			// table에 출력
			// 출력 대상 선택
			/* ★
				$('선택자').html('코드') : 안에 있는 코드를 덮어쓰기 한다.
				$('선택자').after('코드') : 태그 바로 뒤에(다음줄) 추가 된다.
				$('선택자').before('코드') : 태그 바로 앞에(이전줄) 추가 된다.
				$('선택자').append('코드') : 태그 안에 누적
			*/
			$('#tbody').html(''); // 테이블의 내용을 초기화 시켜주는 코드
			for(let i = 0; i < res.length; i++) {
				// ``= backtic이 편하다
				// `` 따옴표 내에서 ${변수} 문자열 사이에 변수를 집어 넣는게 가능
				// JSP의 EL과 문법이 겹쳐서, jsp안에서는 사용이 불가능 하다.
				// thymeleaf => html에서 사용하는 jstl
				tr = `
				<tr>
					<td>${res[i].idx}</td>
					<td><a href='javascript:open(${res[i].idx})'>${res[i].title}</a></td>
					<td>${res[i].writer}</td>
					<td>${res[i].indate}</td>
					<td id='count${res[i].idx}'>${res[i].count}</td>
				</tr>
				<tr id="board${res[i].idx}" style="display:none;">
					<td colspan="5">
						<textarea rows="5" class="form-control">${res[i].content}</textarea>
					</td>
				</tr>
										
				`; // <td>${res[i].idx}</td> el표기와 유사하게 진행 가능하다 단, 빽틱 `` 내부에서 가능하다
				// 원래 <td>` + res[i].idx + `</td>
				
				$('#tbody').append(tr);

			}
			
		},
		error : function(e) {
			// 404, 405, 500 --> 요청 자체가 실패한 경우를 error라고 한다.
			// 대부분 alert();를 쓴다.
			// function(e)의 e --> exception : 어떤 에러가 떴는지 담기는 변수
			alert('error');
		}
	});			
}) // 대부분은 이정도만 해도 끝이 난다.


// ======================= ajax ==========================

function open(idx){
	// 조회수 업데이트 하기
	// 태그 안에 있는 값??
	// .text()
	// .html() : 닫는태그가 있는 경우 사용 
	// .val() : 닫는태그가 없는 경우 사용 (input태그dml <input type='text' value>의 value)
	let count = Number($('#count'+ idx).html())
	$.ajax({
		url : 'viewUpdate.do',
		type : 'post',
		data : {
			'idx' : idx,
			'count' : count +1,
		},
		success : function(res){
			// 기존에 있던 조회수를 바꿔줘야함
			$('#count'+ idx).html(count +1)
			$(`#board${idx}`).css('display', 'table-row')
		},
		error : function(e){alert('error!')}

	});


	// #board7 이런식으로 선택자를 호출할 수 있다.
	// $('선택자').css('스타일 이름') : 해당하는 스타일 값을 반환
	// $('선택자').css('스타일 이름','바꿔줄 값') : css옵션을 수정 시켜주는 함수


}
