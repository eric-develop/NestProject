package com.nestCor.nest.services.space.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nestCor.nest.member.model.vo.Member;
import com.nestCor.nest.services.space.model.dao.SpaceDao;
import com.nestCor.nest.services.space.model.vo.Space;

@Service
public class SpaceServiceImpl implements SpaceService {
	@Autowired
	private SpaceDao sDao;
	
	@Override
	public int createSpace(Space space,int mNo) {
		
		int createCheckNum = sDao.createSpace(space);
		int result = 0;
		
		if(createCheckNum == 1) {
			result = sDao.insertCreateMember(mNo);
		}
		
		
		return result;
	}

	
	@Override
	public List<Space> selectSpaceList(int bizNo) {
		
		return sDao.selectSpaceList(bizNo);
	}

	@Override
	public int updateSpace(Space space) {
		
		return 0;
	}

	@Override
	public int deleteSpace(String spaceName) {

		return 0;
	}

}
