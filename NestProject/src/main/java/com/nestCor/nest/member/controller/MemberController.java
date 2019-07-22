package com.nestCor.nest.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nestCor.nest.member.model.service.MemberService;
import com.nestCor.nest.member.model.vo.Member;

@Controller
public class MemberController {
		
	@Autowired
	private MemberService mService;
	
	
	@RequestMapping("/member/loginView.do")
	public String loginView() {
		
		
		return "client/member/login";
	}
	@RequestMapping("/member/memberLogin.do")
	public String memberLogin() {
		
		
		return "client/services/mainPage";
	}
	
	@RequestMapping("/member/memberInsert.do")
	public String memberEnroll(Member m,@RequestParam(value="phone1") String phone1,@RequestParam(value="phone2") String phone2,@RequestParam(value="phone3") String phone3) {
		System.out.println("전달된 member : " + m);
		String phone = String.join("-", phone1,phone2,phone3);
		m.setPhone(phone);
		
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			System.out.println("회원가입 성공");
		}
		
		return "member/login";
		
	}
	
	
}
