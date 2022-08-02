package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Popula {

	private int month_seq;
	@NonNull
	private String song_info;
	@NonNull
	private String song_genre;
	@NonNull
	private String song_num;
	@NonNull
	private String song_singer;
	@NonNull
	private String song_title;
	@NonNull
	private String song_img;
	@NonNull
	private String song_url;
	@NonNull
	private String month_date;
	
	
}
