package com.nestCor.nest.member.model.service;

import java.util.List;

import com.nestCor.nest.member.model.vo.Member;

public interface MemberService {

		int insertMember(Member m);
		Member selectMember(String userId);
		Member updateMember(Member m);
		int deleteMember(String userId);
		int idDupCheck(String userId);
		int nickDupCheck(String nickName);
		Member searchId(Member m);
		Member searchPwd(Member m);
		int resetPwd(Member m);
		List<Member> selectBizMemberList(int bizNo);
		
	
}
