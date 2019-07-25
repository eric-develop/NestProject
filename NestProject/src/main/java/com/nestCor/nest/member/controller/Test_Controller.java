package com.nestCor.nest.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class Test_Controller {

	@RequestMapping("/test/test.do")
	public String testView() {
		return "client/services/note_main";
	}
}
