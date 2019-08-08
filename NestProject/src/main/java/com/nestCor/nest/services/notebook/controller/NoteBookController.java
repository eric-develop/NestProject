package com.nestCor.nest.services.notebook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nestCor.nest.services.note.model.service.NoteService;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.service.NoteBookService;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;

@Controller
public class NoteBookController {

	 @Autowired 
	 NoteBookService noteBookService;
	 @Autowired 
	 NoteService noteService;
	 
	 @RequestMapping("/notebook/notebook.do") 
	 public String selectListNoteBook(@RequestParam("mno") int mno, Model model) {
		 
		 List<NoteBook> list = noteBookService.selectListNoteBook(mno);
		 System.out.println("list : "+list);
			
		 model.addAttribute("list",list);
		 
		 return "client/services/note/notebookmain";
	 }
	  
	 @RequestMapping("/notebook/goNotebook.do") 
	 public String selectOneNoteBook(@RequestParam("nbno") int nbno, Model model) {
		 List<Note> list = noteBookService.selectOneNoteBook(nbno);
		 System.out.println("list : "+list);
			
		 model.addAttribute("list",list);
		 model.addAttribute("nbno",nbno);
		 return "client/services/note/notebookview";
	 }
	
	 @RequestMapping("/notebook/trashGo.do") 
	 public String trashGo(@RequestParam("trashcan") String trashcan, @RequestParam("nno") int nno, Model model) {

	 Note note = new Note(); 
	 note.setNno(nno);
	 note.setTrashcan(trashcan);
	 
	 int result = noteBookService.trashGo(note);
	 
	 Note note2 = new Note(1,"N"); 
	 System.out.println(note2);
	 List<Note> list = noteService.selectListNote(note2);
	 System.out.println("list: " + list);
	 
	 if(result>0) System.out.println("휴지통으로이동"); 
	 else System.out.println("이동 실패");
	 
	 model.addAttribute("list", list);
	 
	 return "client/services/note/notebookview";
	 }
	 
	
	 @RequestMapping("/notebook/reNote.do")
	 @ResponseBody
	 public String insertReNote(@RequestParam("nno") int nno, Model model) {
		  
		 int result = noteBookService.insertOneRenote(nno); 
		
		 //model.addAttribute("list",list);
		 
		 String str="";
		 if(result>0) str="success";
		 else str="fail";
		 
		 System.out.println("result 확인 : "+result );
		 
		 return str;
	 }
	 
}
