package com.smhrd.web;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.domain.Mylist;
import com.smhrd.mapper.MylistMapper;

@Controller
public class MylistController {
	
	@Autowired
	MylistMapper mapper;
	
	@RequestMapping("/mylistSelect.do")
	public String mylistSelect(Model model, Mylist vo) {		
		List<Mylist> list = mapper.selectMylist(vo);
		model.addAttribute("list", list);
		
		return "mylist";
	}
	
	@RequestMapping("/mylistDelete.do")
	public String mylistDelete(BigDecimal result_score) {
		
		mapper.mylistDelete(result_score);
		
		return "redirect:/mylistSelect.do";

	}	
	
	
}
