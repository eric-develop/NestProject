package com.nestCor.nest.services.space.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.notebook.model.vo.NoteBook;
import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

@Repository
public class SpaceDaoImpl implements SpaceDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int createSpace(Space space) {
			
		return sqlSession.insert("Space_mapper.insertSpace",space);
	}
	
	@Override
	public int insertCreateMember(int mNo) {
		
		return sqlSession.insert("Space_mapper.insertCreateMember",mNo);
	}

	@Override
	public List<Space> selectSpaceList(int bizNo) {
		
		return sqlSession.selectList("Space_mapper.selectSpaceList",bizNo);
	}

	@Override
	public int updateSpace(Space space) {
	
		return 0;
	}

	@Override
	public int deleteSpace(String spaceName) {
		
		return 0;
	}

	@Override
	public ChatRoom selectChatRoomNo(ChatRoom chatRoom) {
		
		return sqlSession.selectOne("Space_mapper.selectChatRoomNo",chatRoom);
	}

	@Override
	public int createChatRoomNo(ChatRoom chatRoom) {
		
		return sqlSession.insert("Space_mapper.createChatRoomNo",chatRoom);
	}

	@Override
	public Map<String,Object> getSpaceContentsMap(int spaceNo) {
		
		Map<String,Object> spaceContentsMap = new HashMap<>();
		
		List<Note> noteList = new ArrayList<>();
		List<NoteBook> noteBookList = new ArrayList<>();
		//List<Note> fixedNoteList = new ArrayList<>();
		
		noteList = sqlSession.selectList("Space_mapper.selectNoteList",spaceNo);
		noteBookList = sqlSession.selectList("Space_mapper.selectNoteBookList",spaceNo);
		//fixedNoteList = sqlSession.selectList("Space_mapper.selectFixedNoteList",spaceNo);
		
		
		spaceContentsMap.put("noteList", noteList);
		spaceContentsMap.put("noteBookList", noteBookList);
		//spaceContentsMap.put("fixedNoteList",fixedNoteList);
		
		return spaceContentsMap;
	}
	
	

}
