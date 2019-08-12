package com.nestCor.nest.business.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nestCor.nest.business.model.dao.BusinessDao;
import com.nestCor.nest.business.model.vo.Business;
import com.nestCor.nest.business.model.vo.BusinessMember;
import com.nestCor.nest.member.model.vo.Member;

@Service
public class BusinessServiceImpl implements BusinessService {
	
	@Autowired
	private BusinessDao bDao;

	@Override
	public int insertBusiness(String bizName) {
		return bDao.insertBusiness(bizName);
	}
	
	@Override
	public int selectBizNo() {
		return bDao.selectBizNo();
	}

	@Override
	public int insertBusinessMemberAdmin(BusinessMember bm) {
		return bDao.insertBusinessMemberAdmin(bm);
	}

	@Override
	public int insertBusinessMember(BusinessMember bm) {
		return bDao.insertBusinessMember(bm);
	}

	@Override
	public int updateBusinessMemberY(int mNo) {
		return bDao.updateBusinessMemberY(mNo);
	}

	@Override
	public int updateBusinessMemberN(int mNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int inviteBizNo(int mNo) {
		return bDao.inviteBizNo(mNo);
	}

	@Override
	public int inviteMNo(String userId) {
		return bDao.inviteMNo(userId);
	}

	@Override
	public List<Member> approvalN(int mNo) {
		return bDao.approvalN(mNo);
	}

	@Override
	public int approvalY(int mNo) {
		return bDao.approvalY(mNo);
	}

	@Override
	public List<Member> MemberListApprovalY(int mNo) {
		return bDao.MemberListApprovalY(mNo);
	}

	@Override
	public int totalBusinessMember(int mNo) {
		return bDao.totalBusinessMember(mNo);
	}

	@Override
	public int totalApprovalN(int mNo) {
		return bDao.totalApprovalN(mNo);
	}

	@Override
	public int totalBusinessAdmin(int mNo) {
		return bDao.totalBusinessAdmin(mNo);
	}

	@Override
	public int totalBusinessSpace(int mNo) {
		return bDao.totalBusinessSpace(mNo);
	}

	@Override
	public List<Member> BusinessMemberList(int mNo) {
		return bDao.BusinessMemberList(mNo);
	}

	@Override
	public List<Member> BusinessAdminList(int mNo) {
		return bDao.BusinessAdminList(mNo);
	}

	@Override
	public String bizName(int mNo) {
		return bDao.bizName(mNo);
	}

}