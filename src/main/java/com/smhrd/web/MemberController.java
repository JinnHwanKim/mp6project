package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.domain.Members;
import com.smhrd.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	MemberMapper mapper;
	
	@RequestMapping("/memberList.do")
	public String memberList( Model model){
		List<Members> list = mapper.memberList();
		model.addAttribute("list", list);			
		return "memberList";
	}
	
	@GetMapping("/memberInsert.do")
	public String memberJoin(Model model) {
		
		return "join";
	}	
	
	@RequestMapping("/memberInsert.do")
	public String memberJoin(Members vo) {
		mapper.memberJoin(vo);
		return "join_suc";
		
	}
	
	@GetMapping("/memberLogin.do")
	public String memberLogin() {

		return "login";
	}
	
	@PostMapping("/memberLogin.do")
	public String memberLogin(Members vo, HttpServletRequest request) {
	
		Members m_vo = mapper.memberLogin(vo);
		HttpSession session = request.getSession();
		session.setAttribute("loginMember", m_vo);

		return "main";
		
	}
	
	@GetMapping("/memberUpdateGo.do")
	public String memberUpdateGo(Members vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Members loginMember = (Members)session.getAttribute("loginMember");
		session.setAttribute("loginMember", loginMember);
		Members m_vo = mapper.memberUpdateList(loginMember.getM_id());
		System.out.println(m_vo);
		return "re_id";
	}
	
	@PostMapping("/memberUpdate.do")
	public String memberUpdate(Members m_vo) {		
		mapper.memberUpdate(m_vo);

		return "redirect:/mainPage.do";		
	}
	
    @RequestMapping(value="/memberLogout.do")
    public String logoutMember(HttpServletRequest request) {
        
        HttpSession session = request.getSession();
        session.invalidate();
        
        return "redirect:/mainPage.do";        
    }
	
}
