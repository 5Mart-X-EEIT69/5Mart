package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.course;
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
	public member findByMemberId(Integer id) {
		member result = entityManager.find(member.class, id);
		return result;
	}

	@Override
	public member findByAccountAndPassword(String account, String password) {
		String hql = "FROM member m WHERE m.account = :account";  
		List<member> result =  entityManager.createQuery(hql).setParameter("account", account).getResultList();
		member data = result.get(0);
		if(account.equals(data.getAccount()) && password.equals(data.getPassword()) ) {
			return data;
		}else{		
			return null;
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
