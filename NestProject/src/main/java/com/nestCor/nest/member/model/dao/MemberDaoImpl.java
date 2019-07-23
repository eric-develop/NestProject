package com.nestCor.nest.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nestCor.nest.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(Member m) {
		
		return sqlSession.insert("Member_mapper.insertMember",m);
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
		
		return sqlSession.selectOne("Member_mapper.idDupCheck",userId);
	}

	@Override
	public int nickDupCheck(String nickName) {
		System.out.println(nickName);
		return sqlSession.selectOne("Member_mapper.nickDupCheck",nickName);
	}

}
