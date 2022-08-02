package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.domain.Members;
import com.smhrd.domain.Result;
import com.smhrd.mapper.PageMapper;

@Controller
public class PageController {

	@Autowired
	PageMapper mapper;
	
	@RequestMapping("/searchSelect.do")
	public String searchSelect(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Members loginMember = (Members)session.getAttribute("loginMember");
		session.setAttribute("loginMember", loginMember);
		if (loginMember != null) {
			mapper.copyTable();
		}
		List<Result> list = mapper.resultList();
		model.addAttribute("list", list);
		
		return "playlist";
		
	}
	
	@RequestMapping("/mainPage.do")
	public String mainPage() {
	
		return "main";

	}
	
}
