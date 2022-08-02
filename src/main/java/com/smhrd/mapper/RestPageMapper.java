package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.Popula;
@Mapper
public interface RestPageMapper {
	
	public List<Popula> monthList5();
	public List<Popula> monthList6();
	public List<Popula> monthList7();

}