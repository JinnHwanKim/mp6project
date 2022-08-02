package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.Popula;
import com.smhrd.mapper.RestPageMapper;

@RestController
public class RestPageController {
	
	@Autowired
	RestPageMapper mapper;
		
	@RequestMapping("/monthList5.do")
	public @ResponseBody List<Popula> monthList5() {		
		List<Popula> musicList = mapper.monthList5();
		return musicList;
	}
	
	@RequestMapping("/monthList6.do")
	public @ResponseBody List<Popula> monthList6() {		
		List<Popula> musicList = mapper.monthList6();
		return musicList;
	}
	
	@RequestMapping("/monthList7.do")
	public @ResponseBody List<Popula> monthList7() {		
		List<Popula> musicList = mapper.monthList7();
		return musicList;
	}

	
}
