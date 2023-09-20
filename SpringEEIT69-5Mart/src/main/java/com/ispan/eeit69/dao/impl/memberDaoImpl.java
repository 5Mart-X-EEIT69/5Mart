package com.ispan.eeit69.dao.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.member;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class memberDaoImpl implements memberDao {

	private static Logger log = LoggerFactory.getLogger(memberDaoImpl.class);

	@PersistenceContext
	EntityManager entityManager; // session

	@Override
	// 儲存member物件，將參數member新增到Member_5mart表格內。
	public void save(member member) {
		log.info("會員註冊之Dao_會員儲存資料");
		entityManager.persist(member);
		log.info("會員註冊之Dao_新增成功 member=" + member);
	}

	@Override
	public member findByMemberId(String id) {
		member result = entityManager.find(member.class, id);
		return result;
	}

	@Override
	public member findByMemberIdAndPassword(String memberId, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}