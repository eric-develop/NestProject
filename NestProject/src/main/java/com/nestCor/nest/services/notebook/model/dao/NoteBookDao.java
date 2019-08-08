package com.nestCor.nest.services.notebook.model.dao;

import java.util.List;

import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;

public interface NoteBookDao {
	//insert, selectOne, selectList, update
	
	int insertNoteBook(NoteBook noteBook);
	
	List<Note> selectOneNoteBook(int nbno);
	//List<Note> selectListNote(Note note);
	
	List<NoteBook> selectListNoteBook(int mno);
	
	int updateNoteBook(NoteBook noteBook);
	
	int trashGo(Note note);
	
	int insertOneRenote(int nno);
}
