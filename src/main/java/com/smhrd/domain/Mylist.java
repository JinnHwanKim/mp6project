package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Mylist {


	private int r_seq;
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
	private String m_id;
	@NonNull
	private Date result_date;
	@NonNull
	private BigDecimal result_score;
	
}
