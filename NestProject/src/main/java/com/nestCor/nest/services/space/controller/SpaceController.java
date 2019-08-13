package com.nestCor.nest.services.space.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nestCor.nest.business.model.service.BusinessService;
import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.member.model.vo.SpaceMember;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.space.model.service.SpaceService;
import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

@Controller
public class SpaceController {

	@Autowired
	private SpaceService sService;
	
	@Autowired 
	private BusinessService bService;
	
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
	
	@RequestMapping("/space/selectChatRoomNo.do")
	@ResponseBody
	public int selectChatRoomNo(@RequestParam("chatter1") String chatter1,@RequestParam("chatter2") String chatter2) {
		
		ChatRoom chatRoom = new ChatRoom();
		chatRoom.setChatter1(chatter1);
		chatRoom.setChatter2(chatter2);
		chatRoom.setChatters(String.join(",", chatter1,chatter2));
		
		int roomNo = sService.selectChatRoomNo(chatRoom);
		
		return roomNo;
	}
	
	@RequestMapping("/space/selectOneSpace.do")
	public String selectOneSpace(@RequestParam int spaceNo, Model model) {
	
        Map<String,Object> spaceContentsMap = sService.getSpaceContentsMap(spaceNo);
     

        model.addAttribute("spaceContentsMap",spaceContentsMap);
	
		return "client/services/space/space_main"; 
	}
	
	@RequestMapping("/space/noteFix.do")
	@ResponseBody
	public void noteFix(@RequestParam int nno) {
		System.out.println("여긴옴");
		sService.noteFix(nno);

	}
	
	@RequestMapping("/space/noteNotFix.do")
	@ResponseBody
	public void noteNotFix(@RequestParam int nno) {
		
		sService.noteNotFix(nno);

	}
	
	
	@RequestMapping("/space/selectFixedNoteList")
	@ResponseBody
	public List<Note> selectFixedNoteList(){
		
		List<Note> fixedNoteList = new ArrayList<>();
		
		fixedNoteList = sService.selectFixedNoteList();
		
		return fixedNoteList;
		
	}
	
	@RequestMapping("/space/spaceNoteDetail.do")
	public String spaceNoteDetail(@RequestParam("spaceno") int spaceNo,@RequestParam("nno") int nno,Model model) {
	
		Map<String,Object> spaceNoteDetailContents = 
				sService.spaceNoteDetail(spaceNo);
		
		model.addAttribute("spaceNoteDetailContents",spaceNoteDetailContents);
		model.addAttribute("nno",nno);
		return "client/services/note/note_of_space_main";
		
	}

	@RequestMapping("/space/spaceManage.do")
	public String spaceManage(Space space, Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("member");
		int mNo = m.getmNo();
		
		List<Space> selectBusinessSpaceList = sService.selectBusinessSpaceList(mNo);
		
		String bizName = bService.bizName(mNo);
		String bmAdmin = bService.bmAdmin(mNo);
		
		model
		.addAttribute("selectBusinessSpaceList", selectBusinessSpaceList)
		.addAttribute("space", space)
		.addAttribute("bizName", bizName)
		.addAttribute("bmAdmin", bmAdmin);
		
		return "client/services/space/spaceManage";
	}
	
	@RequestMapping("/space/insertSpaceMember.do")
	public String insertSpaceMember(SpaceMember sm, Model model, HttpServletRequest req,
									@RequestParam int spaceNo) { // error NullPointer
		
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("member");
		int mNo = m.getmNo();
		
		sm.setSpaceNo(spaceNo);
		sm.setmNo(mNo);
		
		int insertSpaceMember = sService.insertSpaceMember(sm);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(insertSpaceMember > 0) msg = "스페이스에 가입되었습니다.";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
		
	}
	
	@RequestMapping("/space/insertSpaceMemberAdd.do")
	public String insertSpaceMemberAdd(SpaceMember sm, Model model, HttpServletRequest req,
				@RequestParam String userId, @RequestParam int spaceNo) { // error NullPointer

		int mNo = sService.selectMNo(userId);
		
		sm.setSpaceNo(spaceNo);
		sm.setmNo(mNo);
		
		int insertSpaceMemberAdd = sService.insertSpaceMemberAdd(sm);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(insertSpaceMemberAdd > 0) msg = "스페이스에 초대했습니다.";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
		
	}
	
	@RequestMapping("/space/deleteSpace.do")
	public String deleteSpace(Model model, @RequestParam int spaceNo) {
		
		int deleteSpace = sService.deleteSpace(spaceNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(deleteSpace > 0) msg = "스페이스가 삭제되었습니다.";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	
	@RequestMapping("/space/spaceMemberList.do")
	@ResponseBody
	public List<Member> spaceMemberList(@RequestParam int spaceNo) {
		
		List<Member> spaceMemberList = sService.spaceMemberList(spaceNo);
		
		System.out.println(spaceMemberList);
		
		return spaceMemberList;
		
	}
	
	@RequestMapping("/space/deleteSpaceMember.do")
	public String deleteSpaceMember(Model model, @RequestParam int mNo) {
		
		System.out.println("mNo : "+mNo);
		
		int deleteSpaceMember = sService.deleteSpaceMember(mNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(deleteSpaceMember > 0) msg = "스페이스 회원 삭제 성공";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	
	@RequestMapping("/space/updateRightSetR1.do")
	public String updateRightSetR1(Model model, @RequestParam int spaceNo) {
		int result = sService.updateRightSetR1(spaceNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(result > 0) msg = "권한 변경 성공";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	@RequestMapping("/space/updateRightSetR2.do")
	public String updateRightSetR2(Model model, @RequestParam int spaceNo) {
		int result = sService.updateRightSetR2(spaceNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(result > 0) msg = "권한 변경 성공";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	@RequestMapping("/space/updateRightSetR3.do")
	public String updateRightSetR3(Model model, @RequestParam int spaceNo) {
		int result = sService.updateRightSetR3(spaceNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(result > 0) msg = "권한 변경 성공";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	@RequestMapping("/space/updateRightSetR4.do")
	public String updateRightSetR4(Model model, @RequestParam int spaceNo) {
		int result = sService.updateRightSetR4(spaceNo);
		
		String loc = "/space/spaceManage.do";
		String msg = "";
		
		if(result > 0) msg = "권한 변경 성공";
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "client/common/msg";
	}
	
}
