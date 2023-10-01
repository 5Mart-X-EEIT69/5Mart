package com.ispan.eeit69.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.memberService;

@Service
@Transactional
public class memberServiceImpl implements memberService {
	
	private static Logger log = LoggerFactory.getLogger(memberServiceImpl.class);

	memberDao MemberDao;
	
	public memberServiceImpl(memberDao memberDao) {
		MemberDao = memberDao;
	}
	
	@Override
	public void save(member member) {
		MemberDao.save(member);
	}

	@Override
	public member findByMemberId(Integer id) {
		return MemberDao.findByMemberId(id);
	}

	@Override
	public member findByAccountAndPassword(String account, String password) {
		return MemberDao.findByAccountAndPassword(account, password);
	}

	@Override
	public void update(member member) {
		MemberDao.update(member);
	}

	@Override
	public void deleteById(Integer id) {
		MemberDao.deleteById(id);
		
	}

	@Override
	public boolean existsById(String account) {
		log.info("會員註冊功能之Service: 檢查會員輸入的編號是否已被使用");
		Boolean isExist = false;
		isExist = MemberDao.existsById(account);
		return isExist;
	}
	
	
	
	
	

}
