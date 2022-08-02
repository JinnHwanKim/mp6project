package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.Result;

@Mapper
public interface RestResultMapper {

	public List<Result> balgenre();
	public List<Result> dancegenre();
	public List<Result> rapgenre();
	public List<Result> rockgenre();
	public List<Result> rnbgenre();
	public List<Result> indigenre();
	public List<Result> trotgenre();
	public List<Result> elecgenre();
	public List<Result> folkgenre();
	
	
}
