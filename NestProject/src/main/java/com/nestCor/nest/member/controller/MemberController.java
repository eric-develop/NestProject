package com.nestCor.nest.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nestCor.nest.member.model.service.MemberService;
import com.nestCor.nest.member.model.vo.Member;

@Controller
public class MemberController {
		
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping("/member/loginView.do")
	public String loginView() {
		
		
		return "client/member/login";
	}
	@RequestMapping("/member/memberLogin.do")
	public String memberLogin() {
		
		
		return "client/services/note_main";
	}
	
	
	@RequestMapping("/member/memberInsert.do")
	public String memberEnroll(Member m,@RequestParam(value="phone1") String phone1,@RequestParam(value="phone2") String phone2,@RequestParam(value="phone3") String phone3) {
		
		String phone = String.join("-", phone1,phone2,phone3);
		m.setPhone(phone);
		System.out.println(m);
		
		String rawPassword = m.getPassword();
		m.setPassword(pwdEncoder.encode(rawPassword));
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			System.out.println("회원가입 성공");
		}
		
		return "client/member/login";
		
	}
	
	@RequestMapping(value="/member/idDupCheck.do")
	@ResponseBody
	public Map<String,Object> idDupCheck(@RequestParam String userId){
		
		 Map<String,Object> map = new HashMap<>();
		 boolean isUsable = mService.idDupCheck(userId)== 0? true:false;
	     map.put("isUsable", isUsable);
	    
		return map;
	}
	
	@RequestMapping(value="/member/nickDupCheck.do")
	@ResponseBody
	public Map<String,Object> nickDupCheck(@RequestParam String nickName){
			
		 Map<String,Object> map = new HashMap<>();
		 boolean isUsable = mService.nickDupCheck(nickName)== 0 ? true:false;
	     map.put("isUsable", isUsable);
	    
		return map;
	}
	
	@RequestMapping("member/memberSearchView.do")
	public String memberSearchView() {
		
		return "client/member/memberSearch";
	}
	
	@RequestMapping("member/searchId.do")
	@ResponseBody
	public  Map<String,Object> searchId(Member m) {
		
		String userId ="";
		
		Map<String,Object> map = new HashMap<>();
		
		Member member = mService.searchId(m);
		
		if(member != null) {
			userId = member.getUserId();	
		}else {
			userId = "입력하신 정보에 해당하는 회원이 없습니다.";
		}
		
		
		map.put("userId", userId);
		
		return map;
	}
	
	
	
	
	
	
	
	
	
}
