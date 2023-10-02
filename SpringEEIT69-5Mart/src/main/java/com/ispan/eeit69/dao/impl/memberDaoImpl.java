package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.member;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.NonUniqueResultException;
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
	public boolean existsById(String account) {
		log.info("會員註冊功能之Dao: 檢查會員輸入的編號是否已被使用");
		Boolean isExist = false;
		String hql = "FROM member m WHERE account = :account ";

		try {
			member result = (member) entityManager.createQuery(hql).setParameter("account", account).getSingleResult();

			if (result != null) {
				isExist = true;
			}
		} catch (NoResultException e) {
			isExist = false;
		} catch (NonUniqueResultException e) {
			isExist = true;
		}
		log.info("會員註冊功能之Dao: 檢查會員輸入的編號是否已被使用, exist=" + isExist);

		return isExist;
	}

	@Override
	public boolean existsByUsername(String name) {
		log.info("會員註冊功能之Dao: 檢查會員輸入的名字是否已被使用");
		Boolean isExist = false;
		String hql = "FROM member m WHERE username = :username ";
		
		try {
			member result = (member) entityManager.createQuery(hql).setParameter("username", name).getSingleResult();
			if (result != null) {
				isExist = true;
			}
		} catch (NoResultException e) {
			isExist = false;
		} catch (NonUniqueResultException e) {
			isExist = true;
		}
		log.info("會員註冊功能之Dao: 檢查會員輸入的名字是否已被使用, exist=" + isExist);

		return isExist;
		
	}

	@Override
	public member findByMemberId(Integer id) {
		member result = entityManager.find(member.class, id);
		return result;
	}

	@Override
	public member findByAccountAndPassword(String account, String password) {
		String hql = "FROM member m WHERE m.account = :account";
		List<member> result = entityManager.createQuery(hql).setParameter("account", account).getResultList();
		if (result.isEmpty()) {
			return null;
		} else {
			member data = result.get(0);
			if (account.equals(data.getAccount()) && password.equals(data.getPassword())) {
				return data;
			} else {
				return null;
			}

		}

	}

	@Override
	public void update(member member) {
		member tmp = findByMemberId(member.getId());
		tmp.setRegisterTime(tmp.getRegisterTime());
		entityManager.detach(tmp);

	}

	@Override
	public void deleteById(Integer id) {
		String hql = "DELETE FROM member m WHERE m.id = :id";
		entityManager.createQuery(hql).setParameter("id", id).executeUpdate();
	}

}
