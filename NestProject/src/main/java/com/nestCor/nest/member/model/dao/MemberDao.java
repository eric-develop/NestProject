package com.nestCor.nest.member.model.dao;

import com.nestCor.nest.member.model.vo.Member;

public interface MemberDao {
		int insertMember(Member m);
		Member selectMember(String userId);
		Member updateMember(Member m);
		int deleteMember(String userId);
		int idDupCheck(String userId);
		int nickDupCheck(String nickName);
}