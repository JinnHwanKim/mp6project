package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.Members;

import lombok.NonNull;
@Mapper
public interface MemberMapper {
	// <----------------기존내용----------------->
	// dao에서 작성한 메서드 형식으로 만들어준다.
	// interface만 만들어 두면 MyBatis 라이브러리에서 DAO를 대신 만들어 준다.
	// 주고 받는 데이터 타입 정의, sql 문과 처리 명령문이 필요하다. -> BoardMapper.xml 에 등록하여 사용한다.
	// <--------------------------------------->
	
	// 추상메서드
	// BoardMapper.xml의 태그에 주는 id == 메서드 이름이 같아야 찾아간다.
	public List<Members> memberList();
	public Members memberUpdateList(@NonNull String string);
	public int memberJoin(Members vo);
	public int memberUpdate(Members vo);
	//public List<Board> boardList();
//		public Members memberLogin(String m_id);
	public Members memberLogin(Members vo);
	
	// insert/delete/update --> int
	// 어노테이션을 이용한 sql문 작성
	// 어노테이션 이름 == 사용하고자 하는 문장 이름
	// @Delete("SQL 쿼리")
	// ★짧은 쿼리 외 선호하지 않는 방법이다. Mapper와 중복되면 안된다.
	// 추상 메서드 <---mapping(1:1) ---> SQL쿼리★
	// 짧은 쿼리를 쓰는 기준으로 현업에서 둘다 혼용 할 수 있다.
	//@Delete("delete from board where idx=#{idx}")
	//public int boardDelete(int idx);
	// 매퍼와 연결 될 매서드
	//public int boardUpdate(Board vo);
	// 조회수
	//public int viewUpdate(Board vo);
	}

