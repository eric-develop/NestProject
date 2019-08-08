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
		 
		 return "client/services/note/note_list";
	 }
	  
	 @RequestMapping("/notebook/goNotebook.do") 
	 public String selectOneNoteBook(@RequestParam("nbno") int nbno,@RequestParam("nbtitle") String nbtitle, Model model) {
		 List<Note> list = noteBookService.selectOneNoteBook(nbno);
		 System.out.println("list : "+list);
			
		 model.addAttribute("list",list);
		 model.addAttribute("nbtitle",nbtitle);
		 return "client/services/note/notebook_note";
	 }
	
	 @RequestMapping("/notebook/trashGo.do")
	 @ResponseBody
	 public Boolean trashGo(@RequestParam("trashcan") String trashcan, @RequestParam("nno") int nno) {
		 Note note = new Note(); 
		 note.setNno(nno);
		 note.setTrashcan(trashcan);
		 
		 int result = noteBookService.trashGo(note);
		 
		 Note note2 = new Note(1,"N"); 
		 System.out.println(note2);
		 List<Note> list = noteService.selectListNote(note2);
		 System.out.println("list: " + list);
		 
		 boolean data;
		 
		 if(result>0) data = true; 
		 else data = false;
	
		 return data;
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
