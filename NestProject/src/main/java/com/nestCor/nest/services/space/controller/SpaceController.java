package com.nestCor.nest.services.space.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.services.space.model.service.SpaceService;
import com.nestCor.nest.services.space.model.vo.Space;

@Controller
public class SpaceController {

	@Autowired
	private SpaceService sService;
	
	
	@RequestMapping("/space/createSpace.do")
	public String createSpace(Space space, HttpServletRequest req) {
		
		
		System.out.println(space);
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("member");
		System.out.println(m);
		if(space.getPostSpaceDir().equals("on")) {
			space.setPostSpaceDir("Y");
		}else space.setPostSpaceDir("N");
		
		space.setBizNo(m.getBizNo());
		int mNo = m.getmNo();
		System.out.println(space);
		
		int result = sService.createSpace(space,mNo);
		String url = "";
		
		
		if(result > 0) {
			url = "client/services/note/note_main";
		}else { // 에러
			
		}
		
		
		return url;
	}
	
	
}
