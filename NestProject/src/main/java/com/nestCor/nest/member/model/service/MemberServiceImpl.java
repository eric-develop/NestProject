package com.nestCor.nest.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nestCor.nest.member.model.dao.MemberDao;
import com.nestCor.nest.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Override
	public int insertMember(Member m) {
		
		return mDao.insertMember(m);
	}

	@Override
	public Member selectMember(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member updateMember(Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int idDupCheck(String userId) {
		
		return mDao.idDupCheck(userId);
	}

	@Override
	public int nickDupCheck(String nickName) {
	
		return mDao.nickDupCheck(nickName);
	}

}
