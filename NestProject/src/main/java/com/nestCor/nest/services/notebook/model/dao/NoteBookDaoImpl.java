package com.nestCor.nest.services.notebook.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;

@Repository
public class NoteBookDaoImpl implements NoteBookDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertNoteBook(NoteBook noteBook) {
		return 0;
	}

	@Override
	public List<Note> selectOneNoteBook(int nbno) {
		System.out.println("dao들어옴");
		return sqlSession.selectList("noteBook.selectOneNoteBook", nbno);
	}

	/*
	 * @Override public List<Note> selectListNote(Note note) { return
	 * sqlSession.selectList("noteBook.selectListNote", note); }
	 */

	
	@Override
	public List<NoteBook> selectListNoteBook(int mno) {
		return sqlSession.selectList("noteBook.selectListNoteBook", mno);
	}
	
	@Override
	public int updateNoteBook(NoteBook noteBook) {
		return 0;
	}
	
	
	 @Override 
	 public int trashGo(Note note) { 
		 System.out.println(" trashGo dao들어옴");
		 return sqlSession.update("noteBook.trashGo", note); 
	 }
	 

	@Override
	public int insertOneRenote(int nno) {
		System.out.println("dao들어옴");
		return sqlSession.insert("noteBook.insertOneRenote", nno);
	}
}
