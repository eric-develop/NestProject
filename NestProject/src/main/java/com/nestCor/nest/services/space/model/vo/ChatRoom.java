package com.nestCor.nest.services.space.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Setter
@Getter 
@ToString
public class ChatRoom implements Serializable {

	private static final long serialVersionUID = 1007L;
	private int roomIdx;
	private String chatter1;
	private String chatter2;
	private String chatters;
	private String groupChat;
	private int roomNo;
	
	public ChatRoom() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChatRoom(int roomIdx, String chatter1, String chatter2, String chatters, String groupChat, int roomNo) {
		super();
		this.roomIdx = roomIdx;
		this.chatter1 = chatter1;
		this.chatter2 = chatter2;
		this.chatters = chatters;
		this.groupChat = groupChat;
		this.roomNo = roomNo;
	}

	public int getRoomIdx() {
		return roomIdx;
	}

	public void setRoomIdx(int roomIdx) {
		this.roomIdx = roomIdx;
	}

	public String getChatter1() {
		return chatter1;
	}

	public void setChatter1(String chatter1) {
		this.chatter1 = chatter1;
	}

	public String getChatter2() {
		return chatter2;
	}

	public void setChatter2(String chatter2) {
		this.chatter2 = chatter2;
	}

	public String getChatters() {
		return chatters;
	}

	public void setChatters(String chatters) {
		this.chatters = chatters;
	}

	public String getGroupChat() {
		return groupChat;
	}

	public void setGroupChat(String groupChat) {
		this.groupChat = groupChat;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ChatRoom [roomIdx=" + roomIdx + ", chatter1=" + chatter1 + ", chatter2=" + chatter2 + ", chatters="
				+ chatters + ", groupChat=" + groupChat + ", roomNo=" + roomNo + "]";
	}
	
	
	
}
