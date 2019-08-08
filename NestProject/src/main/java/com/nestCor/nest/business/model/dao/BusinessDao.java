package com.nestCor.nest.business.model.dao;

import java.util.List;

import com.nestCor.nest.business.model.vo.Business;
import com.nestCor.nest.business.model.vo.BusinessMember;
import com.nestCor.nest.member.model.vo.Member;

public interface BusinessDao {
	
	int insertBusiness(String bizName);
	int selectBizNo();
	int insertBusinessMemberAdmin(BusinessMember bm);
	int insertBusinessMember(BusinessMember bm);
	int inviteBizNo(int mNo);
	int inviteMNo(String userId);
	int updateBusinessMemberY(int mNo);
	int updateBusinessMemberN(int mNo);
	List<Member> approvalN(int mNo);
	int totalApprovalN(int mNo);
	List<Member> MemberListApprovalY(int mNo);
	int approvalY(int mNo);
	int totalBusinessMember(int mNo);
	int totalBusinessAdmin(int mNo);
	int totalBusinessSpace(int mNo);
	List<Member> BusinessMemberList(int mNo);
	List<Member> BusinessAdminList(int mNo);
	String bizName(int mNo);

}
