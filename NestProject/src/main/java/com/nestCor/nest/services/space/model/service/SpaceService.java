package com.nestCor.nest.services.space.model.service;

import java.util.List;
import java.util.Map;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.member.model.vo.SpaceMember;
import com.nestCor.nest.services.note.model.vo.Note;
import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

public interface SpaceService {
		int createSpace(Space space,int mNo);
		List<Space> selectSpaceList(int bizNo);
		int updateSpace(Space space);
		int deleteSpace(String spaceName);
		int selectChatRoomNo(ChatRoom chatRoom);
		Map<String,Object> getSpaceContentsMap(int spaceNo);
		void noteFix(int nno);
		void noteNotFix(int nno);
		List<Note> selectFixedNoteList();
		Map<String, Object> spaceNoteDetail(int spaceNo);
	

		
		
		
		// 스페이스 컨텐츠 가져오는 것도 할 예정.
		
		/***
		 * 비즈니스 스페이스 리스트
		 * @param mNo
		 * @return
		 */
		List<Space> selectBusinessSpaceList(int mNo);
		
		/***
		 * 비즈니스 스페이스멤버 가입
		 * @param sm
		 * @return
		 */
		int insertSpaceMember(SpaceMember sm);
		
		int selectMNo(String userId);
		
		/***
		 * 비즈니스 스페이스멤버 초대
		 * @param sm
		 * @return
		 */
		int insertSpaceMemberAdd(SpaceMember sm);
		
		/***
		 * 비즈니스 스페이스 삭제
		 * @param spaceNo
		 * @return
		 */
		int deleteSpace(int spaceNo);
		
		/***
		 * 비즈니스 스페이스 회원 수
		 * @param spaceNo
		 * @return
		 */
		int countSpaceMember(int spaceNo);
		
		/***
		 * 비즈니스 스페이스 회원 리스트
		 * @param spaceNo
		 * @return
		 */
		List<Member> spaceMemberList(int spaceNo);
		
		/***
		 * 비즈니스 스페이스 회원 삭제
		 * @param mNo
		 * @return
		 */
		int deleteSpaceMember(int mNo);
		
		/***
		 * 스페이스 권한 변경
		 * @param spaceNo
		 * @return
		 */
		int updateRightSetR1(int spaceNo);
		int updateRightSetR2(int spaceNo);
		int updateRightSetR3(int spaceNo);
		int updateRightSetR4(int spaceNo);

}
