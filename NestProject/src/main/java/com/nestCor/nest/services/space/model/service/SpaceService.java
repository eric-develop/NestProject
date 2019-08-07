package com.nestCor.nest.services.space.model.service;

import java.util.List;

import com.nestCor.nest.services.space.model.vo.ChatRoom;
import com.nestCor.nest.services.space.model.vo.Space;

public interface SpaceService {
		int createSpace(Space space,int mNo);
		List<Space> selectSpaceList(int bizNo);
		int updateSpace(Space space);
		int deleteSpace(String spaceName);
		int selectChatRoomNo(ChatRoom chatRoom);

		
		
		
		// 스페이스 컨텐츠 가져오는 것도 할 예정.
		

}
