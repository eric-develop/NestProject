package com.nestCor.nest.services.space.model.dao;

import java.util.List;
import java.util.Map;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.member.model.vo.SpaceMember;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

public interface SpaceDao {
	int createSpace(Space space);
	int insertCreateMember(int mNo);
	List<Space> selectSpaceList(int bizNo);
	int updateSpace(Space space);
	int deleteSpace(String spaceName);
	ChatRoom selectChatRoomNo(ChatRoom chatRoom);
	int createChatRoomNo(ChatRoom chatRoom);
	Map<String,Object> getSpaceContentsMap(int spaceNo);
	void noteFix(int nno);
	List<Note> selectFixedNoteList();
	void noteNotFix(int nno);
	Map<String, Object> spaceNoteDetail(int spaceNo);
	
	List<Space> selectBusinessSpaceList(int mNo);
	int insertSpaceMember(SpaceMember sm);
	int insertSpaceMemberAdd(SpaceMember sm);
	int deleteSpace(int spaceNo);
	int selectMNo(String userId);
	int countSpaceMember(int spaceNo);
	List<Member> spaceMemberList(int spaceNo);
	int deleteSpaceMember(int mNo);
	int updateRightSetR1(int spaceNo);
	int updateRightSetR2(int spaceNo);
	int updateRightSetR3(int spaceNo);
	int updateRightSetR4(int spaceNo);
}
