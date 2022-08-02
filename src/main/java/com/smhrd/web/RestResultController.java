package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.Result;
import com.smhrd.mapper.RestResultMapper;

@RestController
public class RestResultController {
	
	@Autowired
	RestResultMapper mapper;
	
	@RequestMapping("/balgenre.do")
	public @ResponseBody List<Result> balgenre() {		
		List<Result> balgenre = mapper.balgenre();
		return balgenre;
	}	
	
	@RequestMapping("/dancegenre.do")
	public @ResponseBody List<Result> dancegenre() {		
		List<Result> dancegenre = mapper.dancegenre();
		return dancegenre;
	}
	
	@RequestMapping("/rapgenre.do")
	public @ResponseBody List<Result> rapgenre() {		
		List<Result> rapgenre = mapper.rapgenre();
		return rapgenre;
	}
	
	@RequestMapping("/rockgenre.do")
	public @ResponseBody List<Result> rockgenre() {		
		List<Result> rockgenre = mapper.rockgenre();
		return rockgenre;
	}
	
	@RequestMapping("/rnbgenre.do")
	public @ResponseBody List<Result> rnbgenre() {		
		List<Result> rnbgenre = mapper.rnbgenre();
		return rnbgenre;
	}
	
	@RequestMapping("/indigenre.do")
	public @ResponseBody List<Result> indigenre() {		
		List<Result> indigenre = mapper.indigenre();
		return indigenre;
	}
	
	@RequestMapping("/trotgenre.do")
	public @ResponseBody List<Result> trotgenre() {		
		List<Result> trotgenre = mapper.trotgenre();
		return trotgenre;
	}
	
	@RequestMapping("/elecgenre.do")
	public @ResponseBody List<Result> elecgenre() {		
		List<Result> elecgenre = mapper.elecgenre();
		return elecgenre;
	}
	
	@RequestMapping("/folkgenre.do")
	public @ResponseBody List<Result> folkgenre() {		
		List<Result> folkgenre = mapper.folkgenre();
		return folkgenre;
	}
	
	
}
