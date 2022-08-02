package com.smhrd.mapper;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.Mylist;

@Mapper
public interface MylistMapper {
	
	public List<Mylist> selectMylist(Mylist vo);
	public int mylistDelete(BigDecimal result_score);
}
