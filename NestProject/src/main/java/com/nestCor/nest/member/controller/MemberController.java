package com.nestCor.nest.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nestCor.nest.member.model.service.MemberService;
import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.services.note.model.service.NoteService;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.space.model.service.SpaceService;
import com.nestCor.nest.services.space.model.vo.Space;
import com.nestCor.nest.services.template.model.service.TemplateService;
import com.nestCor.nest.services.template.model.vo.Template;

@SessionAttributes(value= {"member","spaceList","bizMemberList"})

@Controller
public class MemberController {
		
	@Autowired
	private MemberService mService;
	
	@Autowired
	private SpaceService sService;
	
	@Autowired
	private NoteService nService;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	TemplateService templateService;
	
	@RequestMapping("/member/loginView.do")
	public String loginView() {
		Map<String,String> map = new HashMap<>();
		
	
		
		System.out.println(map.get("test"));
		return "client/member/login";
	}
	
	@RequestMapping("/member/memberLogin.do")
	public String memberLogin(@RequestParam String userId, @RequestParam String password, Model model) {
			
		
			int flagNum = 1;
			String url = "";
			String msg = "";
			System.out.println(userId);
			Member m = mService.selectMember(userId);
			List<Space> spaceList = null;
			List<Member> bizMemberList = null;
			
			if(m != null) {
				if(pwdEncoder.matches(password, m.getPassword())) {
					
					spaceList = sService.selectSpaceList(m.getBizNo());
					bizMemberList = mService.selectBizMemberList(m.getBizNo());
					Note note = new Note(m.getmNo(),"N");
					List<Note> list = nService.selectListNote(note);
					model.addAttribute("list", list);
					List<Template> tlist=templateService.selectListTemplate(m.getmNo());
					model.addAttribute("tlist",tlist);
					model.addAttribute("topmenu",2);
					url = "client/services/note/note_main";
					
				}else {
					url = "/member/loginView.do";
					msg = "비밀번호가 일치하지 않습니다.";
					flagNum = 0;
				}

			}else {
				url="/member/loginView.do";
				msg="존재하지 않는 아이디입니다.";
				flagNum = 0;
			}
		
			if(flagNum == 0) {
				model.addAttribute("url",url).addAttribute("msg",msg);
				return "client/member/loginError";
			}
			
			if(spaceList != null) model.addAttribute("spaceList",spaceList);
			
			model.addAttribute("member",m)
			.addAttribute("bizMemberList",bizMemberList);
			
			return url;
	}
	
	@RequestMapping("/member/logout.do")
	public String memberLogout(SessionStatus sessionStatus) {
			
		if(!sessionStatus.isComplete()) {
			sessionStatus.setComplete();
		}
	
		
		return "redirect:/";
	
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
	public Map<String,Object> searchId(Member m) {
		
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
	
	@RequestMapping("member/searchPwd.do")
	@ResponseBody
	public Map<String,Object> searchPwd(Member m) {
		
	
		
		String userId ="";
		
		Map<String,Object> map = new HashMap<>();
		
		Member member = mService.searchPwd(m);
		
		if(member != null) {
			userId = member.getUserId();	
		}else {
			userId = "입력하신 정보에 해당하는 회원이 없습니다.";
		}
	
		map.put("userId", userId);
		
		return map;
	}
	
	@RequestMapping("member/resetPwd.do")
	@ResponseBody
	public Map<String,Object> resetPwd(Member m) {

		String msg ="";
		
		String rawPassword = m.getPassword();
		m.setPassword(pwdEncoder.encode(rawPassword));
		Map<String,Object> map = new HashMap<>();
		
		int result = mService.resetPwd(m);
		
		if(result > 0) {
			msg = "비밀번호가 변경되었습니다.";
		}else {
			msg= "비밀번호 변경에 실패했습니다.";
		}
	
		map.put("msg", msg);
		
		return map;
	}
	
	@RequestMapping("member/selectBizMemberList.do")
	@ResponseBody
	public List<Member> selectBizMemberList(HttpSession session){
		Member m = new Member();
		m = (Member)session.getAttribute("member");
		
		List<Member> bizMemberList = null;

		bizMemberList = mService.selectBizMemberList(m.getBizNo());
		
		
		return bizMemberList;
	}
	

	
	
	
	
}
