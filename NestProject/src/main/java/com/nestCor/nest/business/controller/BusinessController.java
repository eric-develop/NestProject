package com.nestCor.nest.business.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nestCor.nest.business.model.service.BusinessService;
import com.nestCor.nest.business.model.vo.Business;
import com.nestCor.nest.business.model.vo.BusinessMember;
import com.nestCor.nest.member.model.service.MemberService;
import com.nestCor.nest.member.model.vo.Member;

@Controller
public class BusinessController {
	
	@Autowired
	private BusinessService bService;
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("/business/insertBusiness.do")
	public String insertBusiness(Model model, @RequestParam String bizName, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("member");
		int mNo = m.getmNo();
		
		m.setmNo(mNo);
		
		int result = bService.insertBusiness(bizName);
		
		if(result > 0) {
			System.out.println("비즈니스 등록 성공");
			
			int bizNo = bService.selectBizNo();
			System.out.println("bizno : " + bizNo);
			
			m.setBizNo(bizNo);
			
			int updateMemberBizNo = mService.updateMemberBizNo(m);
			
			BusinessMember bm = new BusinessMember();
			bm.setBizNo(bizNo);
			bm.setmNo(mNo);
			bm.setAdmin("Y");
			
			int insertBusinessMemberAdmin = bService.insertBusinessMemberAdmin(bm);
			
			if(updateMemberBizNo > 0) System.out.println("회원 비즈니스 번호 등록 성공");
			if(insertBusinessMemberAdmin > 0) {
				System.out.println("비즈니스 멤버 등록 성공");
				
				model.addAttribute("insertBusinessMemberAdmin", insertBusinessMemberAdmin);
			}
		}
		
		return "redirect:"; 
	}
	
	@RequestMapping("/business/insertBusinessMember.do")
	public String insertBusinessMember(Model model, @RequestParam String userId, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("member");
		int mNo = m.getmNo();
		
		int bizNo = bService.inviteBizNo(mNo);
		
		int inviteMNO = bService.inviteMNo(userId);
		
		BusinessMember bm = new BusinessMember();
		bm.setBizNo(bizNo);
		bm.setmNo(inviteMNO);
		System.out.println(bm);
		int result = bService.insertBusinessMember(bm);
		
		if(result > 0) System.out.println("비즈니스 회원 초대 성공");
		
		return "client/member/memberInvite";
	}
	
	@RequestMapping("/business/updateBusinessMemberY.do")
	public String updateBusinessMemberY(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("member");
		int mNo = m.getmNo();
		
		int result = bService.updateBusinessMemberY(mNo);
		
		if(result > 0) System.out.println("비즈니스 초대 수락");
		
		return "client/services/note/note_main";
		
	}
	
	@RequestMapping("/member/approvalStatusY.do")
	public String approvalY(@RequestParam int mNo) {
		
		System.out.println("승인 mNo : " + mNo);
		
		int approvalStatusY = bService.approvalY(mNo);
		
		if(approvalStatusY > 0) System.out.println("사용자 승인 성공");
		
		return "client/member/memberManage";
	}

}






