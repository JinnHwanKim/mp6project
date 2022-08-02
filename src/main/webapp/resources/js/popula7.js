$(document).ready( () => {
	$.ajax({
		url : '/web/monthList7.do',
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
		                <div class="number">7월</div>
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
$( '#month7' ).click( function() {
$(document).ready( () => {
	$.ajax({
		url : '/web/monthList7.do',
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
						<div class="number">7월</div>
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