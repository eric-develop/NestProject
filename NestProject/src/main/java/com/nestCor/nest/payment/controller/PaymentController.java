package com.nestCor.nest.payment.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nestCor.nest.member.model.service.MemberService;
import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.payment.model.service.PaymentService;
import com.nestCor.nest.payment.model.vo.Payment;
import com.nestCor.nest.payment.model.vo.Service;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/service/serviceView.do")
	public String serviceView(Model model) {
		
		Map<String,Service> map 
			= paymentService.selectServiceList();
		
		System.out.println(map);
		model.addAttribute("map",map);
		return "client/payment/serviceView";
	}
	
	@RequestMapping("/payment/paymentView.do")
	public String paymentView() {
		return "client/payment/paymentView";
	}

	@RequestMapping("/payment/insertPremiumPayment.do")
	public String insertPremiumPayment(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("member");
		int mNo = m.getmNo();
		
		int result = paymentService.insertPremiumPayment(mNo);
		
		int result1 = memberService.memberPremiumServiceUpdate(mNo);
		
		String loc="/member/noteMain.do?mNo="+ mNo;
		String msg = "";
		
		if(result > 0) {
			System.out.println("insertBusinessPayment 성공");
			
			if(result1 > 0) {
				System.out.println("memberBusinessServiceUpdate 성공");
				
				int serviceNo = m.getServiceNo();
				
				msg = "결제 성공! 프리미엄 서비스를 이용하세요.";
			}
		}
		
		model
		.addAttribute("loc", loc)
		.addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	@RequestMapping("/payment/insertBusinessPayment.do")
	public String insertBusinessPayment(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("member");
		int mNo = m.getmNo();
		
		int result = paymentService.insertBusinessPayment(mNo);
		
		int result1 = memberService.memberBusinessServiceUpdate(mNo);
		
		String loc="/member/noteMain.do?mNo="+ mNo;
		String msg = "";
		
		if(result > 0) {
			System.out.println("insertBusinessPayment 성공");
			
			if(result1 > 0) {
				System.out.println("memberBusinessServiceUpdate 성공");
				
				msg = "결제 성공! 비즈니스를 등록하고 서비스를 이용하세요.";
			}
		}
		
		model
		.addAttribute("loc", loc)
		.addAttribute("msg", msg);
		
		return "client/common/msg";
	}

	
}
