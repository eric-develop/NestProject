package com.nestCor.nest.services.space.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.member.model.vo.SpaceMember;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.space.model.dao.SpaceDao;
import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

@Service
public class SpaceServiceImpl implements SpaceService {
	@Autowired
	private SpaceDao sDao;
	
	@Override
	public int createSpace(Space space,int mNo) {
		
		int createCheckNum = sDao.createSpace(space);
		int result = 0;
		
		if(createCheckNum == 1) {
			result = sDao.insertCreateMember(mNo);
		}
		
		
		return result;
	}

	
	@Override
	public List<Space> selectSpaceList(int bizNo) {
		
		return sDao.selectSpaceList(bizNo);
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
	public int selectChatRoomNo(ChatRoom chatRoom) {
		int roomNo = 0;
		// 기존에 형성되어있는 ChatRoom이 있는지 확인
		ChatRoom resultRoom = sDao.selectChatRoomNo(chatRoom);
		
		// 없다면?
		if(resultRoom == null) {
			// ChatRoom 생성
			int result = sDao.createChatRoomNo(chatRoom);
			// 새로만든 방 번호 가져옴
			if(result > 0) resultRoom = sDao.selectChatRoomNo(chatRoom);		
		}
		
		roomNo = resultRoom.getRoomNo();
		
		return roomNo;
	}


	@Override
	public Map<String,Object> getSpaceContentsMap(int spaceNo) {
		
		Map<String,Object> spaceContentsMap = sDao.getSpaceContentsMap(spaceNo);
		
		return spaceContentsMap;
	}


	@Override
	public void noteFix(int nno) {
		
		sDao.noteFix(nno);
		
	}

	@Override
	public void noteNotFix(int nno) {
		sDao.noteNotFix(nno);
		
	}
	
	@Override
	public List<Note> selectFixedNoteList() {
		
		return sDao.selectFixedNoteList();
	}


	@Override
	public Map<String, Object> spaceNoteDetail(int spaceNo) {
		
		return sDao.spaceNoteDetail(spaceNo);
	}

	@Override
	public List<Space> selectBusinessSpaceList(int mNo) {
		return sDao.selectBusinessSpaceList(mNo);
	}


	@Override
	public int insertSpaceMember(SpaceMember sm) {
		return sDao.insertSpaceMember(sm);
	}

	@Override
	public int insertSpaceMemberAdd(SpaceMember sm) {
		return sDao.insertSpaceMemberAdd(sm);
	}

	@Override
	public int deleteSpace(int spaceNo) {
		return sDao.deleteSpace(spaceNo);
	}

	@Override
	public int selectMNo(String userId) {
		return sDao.selectMNo(userId);
	}


	@Override
	public int countSpaceMember(int spaceNo) {
		return sDao.countSpaceMember(spaceNo);
	}


	@Override
	public List<Member> spaceMemberList(int spaceNo) {
		return sDao.spaceMemberList(spaceNo);
	}


	@Override
	public int deleteSpaceMember(int mNo) {
		return sDao.deleteSpaceMember(mNo);
	}


	@Override
	public int updateRightSetR1(int spaceNo) {
		return sDao.updateRightSetR1(spaceNo);
	}


	@Override
	public int updateRightSetR2(int spaceNo) {
		return sDao.updateRightSetR2(spaceNo);
	}


	@Override
	public int updateRightSetR3(int spaceNo) {
		return sDao.updateRightSetR3(spaceNo);
	}


	@Override
	public int updateRightSetR4(int spaceNo) {
		return sDao.updateRightSetR4(spaceNo);
	}

}
