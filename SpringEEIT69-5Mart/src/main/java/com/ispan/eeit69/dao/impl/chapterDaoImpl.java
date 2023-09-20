package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.chapterDao;
import com.ispan.eeit69.model.chapter;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class chapterDaoImpl implements chapterDao {
	
	@PersistenceContext //類似Autowired
	EntityManager entityManager; // session

	@Override
	public void save(chapter chapter) {
		entityManager.persist(chapter);

	}

	@Override
	public void update(chapter chapter) {
		entityManager.persist(chapter);//可能要改
	}

	@Override
	public chapter findById(Integer id) {
		chapter result = entityManager.find(chapter.class, id);
		return result;
	}

	@Override
	public List<chapter> findAll() {
		String hql = "FROM chapter";
		List<chapter> chapters = entityManager.createQuery(hql,chapter.class).getResultList(); 
		
		return chapters;
	}

	@Override
	public void deleteById(Integer id) {
		String hql = "DELETE FROM chapter c WHERE c.id = :id";
		entityManager.createQuery(hql).setParameter("id", id).executeUpdate();

	}

}
