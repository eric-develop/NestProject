package com.nestCor.nest.services.space.model.dao;

import java.util.List;

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
}
