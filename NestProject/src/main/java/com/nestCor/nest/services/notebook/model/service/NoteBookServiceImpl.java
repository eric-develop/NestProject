package com.nestCor.nest.services.notebook.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nestCor.nest.services.note.model.dao.NoteDao;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.dao.NoteBookDao;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;

@Service
public class NoteBookServiceImpl implements NoteBookService {

	@Autowired
	NoteBookDao notebookDao;
	@Autowired
	NoteDao noteDao;
	
	@Override
	public int insertNoteBook(NoteBook noteBook) {
		return 0;
	}

	@Override
	public List<Note> selectOneNoteBook(int nbno) {
		System.out.println("service들어옴");
		return notebookDao.selectOneNoteBook(nbno);
	}
	
	/*
	 * @Override public List<Note> selectListNote(Note note) { return
	 * notebookDao.selectListNote(note); }
	 */

	@Override
	public List<NoteBook> selectListNoteBook(int mno) {
		return notebookDao.selectListNoteBook(mno);
	}

	@Override
	public int updateNoteBook(NoteBook noteBook) {
		return 0;
	}
	
	
	 @Override 
	 public int trashGo(Note note) {
		 System.out.println("trashGo service들어옴");
	    return notebookDao.trashGo(note); 
	 }
	

	@Override
	public int insertOneRenote(int nno) {
		System.out.println("service들어옴");
		return notebookDao.insertOneRenote(nno);
	}


}
