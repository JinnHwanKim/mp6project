$( '#balgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/balgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#dancegenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/dancegenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#rapgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/rapgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#rockgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/rockgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#rnbgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/rnbgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#indigenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/indigenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#trotgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/trotgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#elecgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/elecgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});
$( '#folkgenre' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/folkgenre.do',
		type : 'post',
		data : {
		},
		success : function(res){
			$('#music_list').html('');
			for(let i = 0; i < res.length; i++) {
				li=`
					<li class="chartList">
		                <div class="number"> ${res[i].song_num} </div>
		                <div class="thumb">
		                <img class="profile" src="${res[i].song_img}">
		                </div>
		
		                <div class="content">
		                    <p class="music-name">${res[i].song_title}</p>
		                    <span class="singer">${res[i].song_singer}</span>
		                </div>
		                <div>
		                    <img class="play" src="resources/img/play.png"
		                        onclick="location.href='https://www.youtube.com/results?search_query=${res[i].song_singer}+${res[i].song_title}+audio'">
		                </div>
						<div class="number">${res[i].result_score}%</div>
		            </li>
				`;
			$('#music_list').append(li);
			}	
		},
		error : function(e) {
			alert('error');
		}
	});
})
});