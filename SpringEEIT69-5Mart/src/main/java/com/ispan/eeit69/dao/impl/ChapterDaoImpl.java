package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.ChapterDao;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class ChapterDaoImpl implements ChapterDao {
	
	@PersistenceContext //類似Autowired
	EntityManager entityManager; // session

	@Override
	public void save(Chapter chapter) {
		entityManager.persist(chapter);

	}

	@Override
	public void update(Chapter chapter) {
		entityManager.persist(chapter);//可能要改
	}

	@Override
	public Chapter findById(Integer id) {
		Chapter result = entityManager.find(Chapter.class, id);
		return result;
	}

	@Override
	public List<Chapter> findAll() {
		String hql = "FROM Chapter";
		List<Chapter> chapters = entityManager.createQuery(hql,Chapter.class).getResultList(); 
		
		return chapters;
	}

	@Override
	public void deleteById(Integer id) {
		String hql = "DELETE FROM Chapter c WHERE c.id = :id";
		entityManager.createQuery(hql).setParameter("id", id).executeUpdate();

	}

}
