package com.nestCor.nest.member.controller;
//Install the Java helper library from twilio.com/docs/java/install
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
@Controller	
public class MsgController {
	
	@RequestMapping("member/sendMsg.do")
	@ResponseBody
	public String sendMsg(@RequestParam String phone){
			
	
	   String ACCOUNT_SID = "ACbbe879649eba3277f44db06a1225f3a1";
	   String AUTH_TOKEN = "c06d610999e0b490abd79e9c3a398f35";
	   String verifyNum = randomNum();
	        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
	        Message message = Message.creator(
	                new com.twilio.type.PhoneNumber(phone),
	                new com.twilio.type.PhoneNumber("+14849862224"),
	                verifyNum)
	            .create();

	      
	       
	        return verifyNum;
	}
	
	private String randomNum() {
	    StringBuffer buffer = new StringBuffer();
	        
	    for( int i = 0 ; i < 4 ; i++) {
	        int n = (int)(Math.random()*10);
	        buffer.append(n);
	    }
	        
	    return buffer.toString();
	}
	    
	
}
