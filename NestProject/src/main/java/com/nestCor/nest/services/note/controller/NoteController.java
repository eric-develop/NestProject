package com.nestCor.nest.services.note.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.nestCor.nest.services.note.model.service.NoteService;
import com.nestCor.nest.services.note.model.vo.Note;


@Controller
public class NoteController {
	
	
	@Autowired
	NoteService noteService;
	
	@RequestMapping("/note/index.do")
	public String indexgo() {
		return "client/services/note/index";
	}
	
	@RequestMapping("/note/nShare.do")
	public String noteShare() {
		return "client/services/note/note_file_share";
	}
	
	@RequestMapping("/note/tag.do")
	public String tag() {
		return "client/services/note/note_tag";
	}
	
	
	
	
	
	
	@RequestMapping("/note/newNote.do")
	public String newNote(Model model) {
		model.addAttribute("topmenu",1);
		return "client/services/note/newNote";
	}
	
	@RequestMapping("/note/noteDetail.do")
	@ResponseBody
	public Note noteDetail(@RequestParam("nno") int nno) {
		System.out.println("들어오옴");
		System.out.println("nno: " + nno);
		Note note = new Note();
		
		note = noteService.noteDetail(nno);
		
		System.out.println(note+"들어옴");
		return note;
	}
	
	// 새 노트 저장 시
	@RequestMapping("/note/firstSave.do")
	@ResponseBody
	public int firstSave(@RequestParam("nno") int nno,@RequestParam("ntitle") String ntitle, @RequestParam("ncontent") String ncontent, @RequestParam("mno") int mno,Model model) {
		Note note = new Note();
		note.setMno(mno);
		note.setNno(nno);
		note.setNtitle(ntitle);
		note.setNcontent(ncontent);
		System.out.println("저장시도");
		int result = noteService.firstSave(note);
		
		boolean check;
		if(result>0) check=true;
		else check=false;
		
		int nNo = noteService.searchNno(note);
		
		
		
		return nNo;
	}
	
	@RequestMapping("/note/saveNote.do")
	@ResponseBody
	public boolean saveNote(@RequestParam("nno") int nno,@RequestParam("ntitle") String ntitle, @RequestParam("ncontent") String ncontent) {
		Note note = new Note();
		note.setNno(nno);
		note.setNtitle(ntitle);
		note.setNcontent(ncontent);
		
		int result = noteService.updateNote(note);
		
		boolean check;
		if(result>0) check=true;
		else check=false;
		return check;
	}
	
	
	@RequestMapping("/note/note.do")
	public String selectListNote(@RequestParam("mno") int mno, @RequestParam("trashcan") String yn, Model model) {
		
		Note note = new Note(mno,yn);
		System.out.println(note);
		List<Note> list = noteService.selectListNote(note);
		
		System.out.println("list : "+list);
		
		model.addAttribute("list",list);
		String path;
		if(yn.equals("Y")) {path="client/services/note/note_trashcan"; model.addAttribute("topmenu",5);}
		else {path="client/services/note/note_main"; model.addAttribute("topmenu",2);}
		
		return path;
	}
	
	@RequestMapping("/note/insertNote.do")
	public String insertNote(@RequestParam("ntitle") String ntitle, @RequestParam("ncontent") String ncontent, Model model) {
		
		Note note = new Note();
		
		note.setNcontent(ncontent);
		note.setNtitle(ntitle);
		note.setMno(1);
		
		int result = noteService.insertNote(note);
		
		if(result>0) System.out.println("저장 성공");
		else System.out.println("실패");
		
		
		
		return "client/services/note/finalTemplate";
	}
	
	@RequestMapping("/note/goBackTrash.do")
	public String goTrash(@RequestParam("trashcan") String trashcan, @RequestParam("nno") int nno,  Model model) {
		Note note = new Note();
		note.setNno(nno);
		note.setTrashcan(trashcan);
		
		int result = noteService.goTrash(note);
		
		Note note2 = new Note(1,"N");
		
		List<Note> list = noteService.selectListNote(note2);
		
		if(result>0) System.out.println("휴지통으로이동");
		else System.out.println("이동 실패");
		
		model.addAttribute("list", list);
		
		return "client/services/note/noteview";
	}
	
	@RequestMapping("/note/goAllTrash.do")
	public String goAllTrash(@RequestParam("trashcan") String trashcan, @RequestParam("mno") int mno) {
		Note note = new Note();
		note.setMno(mno);
		note.setTrashcan(trashcan);
		
		int result = noteService.goAllTrash(note);
		
		if(result>0) System.out.println("휴지통으로이동");
		else System.out.println("이동 실패");
		
		return "client/services/note/noteview";
	}
	
	
	@RequestMapping("/note/deleteOneTrash.do")
	@ResponseBody
	public Boolean deleteOneTrash(@RequestParam int nno) {
		System.out.println("delete 전 확인 : " + nno);
		int result = noteService.deleteOneTrash(nno);
		boolean tf;
		if(result>0) tf=true;
		else tf=false;

		return tf;
	}
	
	@RequestMapping("/note/deleteAllTrash.do")
	@ResponseBody
	public boolean deleteAllTrash(@RequestParam int mno) {
		System.out.println("mno 확인 : "+mno);
		int result = noteService.deleteAllTrash(mno);
		
		boolean tf;
		if(result>0) tf=true;
		else tf=false;
		
		
		
		return tf;
	}
	
	
	@RequestMapping("/note/restoreTrash.do")
	@ResponseBody
	public boolean restoreTrash(@RequestParam("nno") int nno, @RequestParam("trashcan") String trashcan) {
		Note note = new Note();
		note.setNno(nno);
		note.setTrashcan(trashcan);
		System.out.println("note:" + note);
		
		int result = noteService.restoreTrash(note);
		
		Note note2 = new Note(1, "Y");
		List<Note> list = noteService.selectListNote(note2);
		System.out.println("list : "+list);
		
		boolean tf;
		if(result>0) tf=true;
		else tf=false;

		return tf;
	}
	
	@RequestMapping("/note/moveNote.do")
	@ResponseBody
	public boolean restoreTrash(@RequestParam("nno") int nno, @RequestParam("nbno") int nbno ) {
		Note note = new Note();
		note.setNno(nno);
		note.setNbno(nbno);
		System.out.println("note:" + note);
		
		int result = noteService.moveNote(note);
		
		boolean tf;
		if(result>0) tf=true;
		else tf=false;

		return tf;
	}
	
	
	@RequestMapping(value = "/a/images", method = RequestMethod.POST)
	@ResponseBody
	public String handleTinyMCEUpload(@RequestParam("files") MultipartFile files[],HttpSession session) {
	    System.out.println("uploading______________________________________MultipartFile " + files.length);
	    String filePath = "/resources/uploads/images/" + files[0].getOriginalFilename();
	    String result = uploadFilesFromTinyMCE("images", files, false,session);
	    System.out.println(result);
	    return "{\"location\":\"" + filePath + "\"}";

	}
	@RequestMapping(value = "/a/files", method = RequestMethod.POST, produces = "application/String; charset=utf8")
	@ResponseBody
	public String handleTinyMCEUpload2(@RequestParam("files") MultipartFile files[],HttpSession session) {
	    System.out.println("uploading______________________________________MultipartFile " + files.length);
	    String filePath = "/resources/uploads/files/" + files[0].getOriginalFilename();
	    String result = uploadFilesFromTinyMCE("files", files, false,session);
	    System.out.println(result);
	    return "{\"location\":\"" + filePath + "\"}";
	}
	private String uploadFilesFromTinyMCE(String prefix, MultipartFile files[], boolean isMain,HttpSession session) {
		ServletContext context=session.getServletContext();
	    System.out.println("uploading______________________________________" + prefix);
	    try {
	        String folder = context.getRealPath("/") + "/resources/uploads/" + prefix+"/";
	        StringBuffer result = new StringBuffer();
	        byte[] bytes = null;
	        result.append("Uploading of File(s) ");

	        for (int i = 0; i < files.length; i++) {
	            if (!files[i].isEmpty()) {

	                try {
	                    boolean created = false;

	                    try {
	                        File theDir = new File(folder);
	                        System.out.println("1");
	                        theDir.mkdir();
	                        System.out.println("2");
	                        created = true;
	                        System.out.println("3");
	                    } catch (SecurityException se) {
	                        se.printStackTrace();
	                    }
	                    if (created) {
	                        System.out.println("DIR created");
	                    }
	                    String path = "";
	                    path = folder + files[i].getOriginalFilename();
	                    File destination = new File(path);
	                    System.out.println("--> " + destination);
	                    System.out.println("파일전송");
	                    files[i].transferTo(destination);
	                    result.append(files[i].getOriginalFilename() + " Succsess. ");
	                } catch (Exception e) {
	                    throw new RuntimeException("Product Image saving failed", e);
	                }

	            } else
	                result.append(files[i].getOriginalFilename() + " Failed. ");

	        }

	        return result.toString();

	    } catch (Exception e) {
	        return "Error Occured while uploading files." + " => " + e.getMessage();
	    }
	}
	
	
}
