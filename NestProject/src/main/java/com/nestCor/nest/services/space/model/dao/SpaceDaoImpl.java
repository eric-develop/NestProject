package com.nestCor.nest.services.space.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.member.model.vo.SpaceMember;
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
		
		noteList = sqlSession.selectList("Space_mapper.selectNoteList",spaceNo);
		noteBookList = sqlSession.selectList("Space_mapper.selectNoteBookList",spaceNo);
		
		Space space = sqlSession.selectOne("Space_mapper.selectOneSpace",spaceNo);
		
		String spaceName = space.getSpaceName();
		String spaceExplain= space.getSpaceExplain();
		
		spaceContentsMap.put("noteList", noteList);
		spaceContentsMap.put("noteBookList", noteBookList);
		spaceContentsMap.put("spaceName",spaceName);
		spaceContentsMap.put("spaceExplain",spaceExplain);
		return spaceContentsMap;
	}

	@Override
	public void noteFix(int nno) {
		
		sqlSession.update("Space_mapper.noteFix",nno);
		
	}

	@Override
	public List<Note> selectFixedNoteList() {
		
		return sqlSession.selectList("Space_mapper.selectFixedNoteList");
	}

	@Override
	public void noteNotFix(int nno) {
		sqlSession.update("Space_mapper.noteNotFix",nno);
		
	}

	@Override
	public Map<String, Object> spaceNoteDetail(int spaceNo) {
		
		Map<String,Object> spaceNoteDetailContents = new HashMap<>();
		
		
		List<Note> noteList = new ArrayList<>();
		
		noteList = 	sqlSession.selectList("Space_mapper.spaceNoteDetail",spaceNo);
		Space space = sqlSession.selectOne("Space_mapper.selectOneSpace",spaceNo);
		
		String spaceName = space.getSpaceName();
		
		spaceNoteDetailContents.put("list",noteList);
		spaceNoteDetailContents.put("spaceName",spaceName);
		
		return spaceNoteDetailContents;
		
	}

	@Override
	public List<Space> selectBusinessSpaceList(int mNo) {
		return sqlSession.selectList("Space_mapper.selectBusinessSpaceList", mNo);
	}

	@Override
	public int insertSpaceMember(SpaceMember sm) {
		return sqlSession.insert("Space_mapper.insertSpaceMember", sm);
	}

	@Override
	public int insertSpaceMemberAdd(SpaceMember sm) {
		return sqlSession.insert("Space_mapper.insertSpaceMemberAdd", sm);
	}

	@Override
	public int deleteSpace(int spaceNo) {
		return sqlSession.delete("Space_mapper.deleteSpace", spaceNo);
	}

	@Override
	public int selectMNo(String userId) {
		return sqlSession.selectOne("Space_mapper.selectMNo", userId);
	}

	@Override
	public int countSpaceMember(int spaceNo) {
		return sqlSession.selectOne("Space_mapper.countSpaceMember", spaceNo);
	}

	@Override
	public List<Member> spaceMemberList(int spaceNo) {
		return sqlSession.selectList("Space_mapper.spaceMemberList", spaceNo);
	}

	@Override
	public int deleteSpaceMember(int mNo) {
		return sqlSession.delete("Space_mapper.deleteSpaceMember", mNo);
	}

	@Override
	public int updateRightSetR1(int spaceNo) {
		return sqlSession.update("Space_mapper.updateRightSetR1", spaceNo);
	}

	@Override
	public int updateRightSetR2(int spaceNo) {
		return sqlSession.update("Space_mapper.updateRightSetR2", spaceNo);
	}

	@Override
	public int updateRightSetR3(int spaceNo) {
		return sqlSession.update("Space_mapper.updateRightSetR3", spaceNo);
	}

	@Override
	public int updateRightSetR4(int spaceNo) {
		return sqlSession.update("Space_mapper.updateRightSetR4", spaceNo);
	}
	
	

}
