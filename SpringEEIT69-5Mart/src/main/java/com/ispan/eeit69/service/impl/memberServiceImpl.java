package com.ispan.eeit69.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.memberService;

@Service
@Transactional
public class memberServiceImpl implements memberService {

	memberDao MemberDao;
	
	public memberServiceImpl(memberDao memberDao) {
		MemberDao = memberDao;
	}
	
	@Override
	public void save(member member) {
		MemberDao.save(member);
	}

	@Override
	public member findByMemberId(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public member findByMemberIdAndPassword(String memberId, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
