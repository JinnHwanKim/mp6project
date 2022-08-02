package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data //Lombok 설치 및 porm.xml에 설정 후 @Data 어노테이션을 적용 시키면 Getter Setter가 생긴다.
@AllArgsConstructor // 모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor// 기본생성자
@RequiredArgsConstructor // 필요한 필드만 요소로 갖는 생성자 생성
public class Members {
	
	
	@NonNull
	private String m_id;
	@NonNull
	private String m_pw;
	@NonNull
	private String m_name;
	@NonNull
	private String m_gender;
	private String m_joindate;
	@NonNull
	private String m_phone;
	private int m_yy;
	private int m_mm;
	private int m_dd;


}
