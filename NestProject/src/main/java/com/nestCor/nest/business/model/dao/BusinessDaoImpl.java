package com.nestCor.nest.business.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nestCor.nest.business.model.vo.Business;
import com.nestCor.nest.business.model.vo.BusinessMember;
import com.nestCor.nest.member.model.vo.Member;

@Repository
public class BusinessDaoImpl implements BusinessDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertBusiness(String bizName) {
		return sqlSession.insert("Business_mapper.insertBusiness", bizName);
	}
	
	@Override
	public int selectBizNo() {
		return sqlSession.selectOne("Business_mapper.selectBizNo");
	}

	@Override
	public int insertBusinessMemberAdmin(BusinessMember bm) {
		return sqlSession.insert("Business_mapper.insertBusinessMemberAdmin", bm);
	}

	@Override
	public int insertBusinessMember(BusinessMember bm) {
		return sqlSession.insert("Business_mapper.insertBusinessMember", bm);
	}

	@Override
	public int updateBusinessMemberY(int mNo) {
		return sqlSession.update("Business_mapper.updateBusinessMemberY", mNo);
	}

	@Override
	public int updateBusinessMemberN(int mNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int inviteBizNo(int mNo) {
		return sqlSession.selectOne("Business_mapper.inviteBizNo", mNo);
	}

	@Override
	public int inviteMNo(String userId) {
		return sqlSession.selectOne("Business_mapper.inviteMNo", userId);
	}

	@Override
	public List<Member> approvalN(int mNo) {
		return sqlSession.selectList("Business_mapper.approvalN", mNo);
	}

	@Override
	public int approvalY(int mNo) {
		return sqlSession.update("Business_mapper.approvalY", mNo);
	}

	@Override
	public List<Member> MemberListApprovalY(int mNo) {
		return sqlSession.selectList("Business_mapper.MemberListApprovalY", mNo);
	}

	@Override
	public int totalBusinessMember(int mNo) {
		return sqlSession.selectOne("Business_mapper.totalBusinessMember", mNo);
	}

	@Override
	public int totalApprovalN(int mNo) {
		return sqlSession.selectOne("Business_mapper.totalApprovalN", mNo);
	}

	@Override
	public int totalBusinessAdmin(int mNo) {
		return sqlSession.selectOne("Business_mapper.totalBusinessAdmin", mNo);
	}

	@Override
	public int totalBusinessSpace(int mNo) {
		return sqlSession.selectOne("Business_mapper.totalBusinessSpace", mNo);
	}

	@Override
	public List<Member> BusinessMemberList(int mNo) {
		return sqlSession.selectList("Business_mapper.businessMemberList", mNo);
	}

	@Override
	public List<Member> BusinessAdminList(int mNo) {
		return sqlSession.selectList("Business_mapper.businessAdminList", mNo);
	}

	@Override
	public String bizName(int mNo) {
		return sqlSession.selectOne("Business_mapper.bizName", mNo);
	}
	

}
