package com.nestCor.nest.services.notebook.model.service;

import java.util.List;

import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;

public interface NoteBookService {
	// insert, selectOne, selectList, update, delete

	int insertNoteBook(NoteBook noteBook);

	List<Note> selectOneNoteBook(int nbno); // 노트북 하나 누르기
	
	//List<Note> selectListNote(Note note); //노트북 리스트

	List<NoteBook> selectListNoteBook(int mno); // 노트북 리스트

	int updateNoteBook(NoteBook noteBook); // 노트북 수정(이름바꾸기)

	int trashGo(Note note); //노트삭제

	int insertOneRenote(int nno);

}