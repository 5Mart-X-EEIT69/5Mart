package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.courseDao;
import com.ispan.eeit69.model.course;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class courseDaoImpl implements courseDao{

	@PersistenceContext //類似Autowired
	EntityManager entityManager; // session
	


	@Override
	public void save(course course) {
		entityManager.persist(course);
		
	}

	@Override
	public void update(course course) {
		course tmp = findById(course.getId());
		tmp.setRegisterTime(tmp.getRegisterTime());
		entityManager.detach(tmp);
		
	}

	@Override
	public course findById(Integer id) {
		course result = entityManager.find(course.class, id);
		return result;
	}

	@Override
	public List<course> findAll() {
		
		String hql = "FROM course";
		List<course> courses = entityManager.createQuery(hql,course.class).getResultList(); 
		
		return courses;
	}

	@Override
	public void deleteById(Integer id) {
		String hql = "DELETE FROM course c WHERE c.id = :id";
		entityManager.createQuery(hql).setParameter("id", id).executeUpdate();
		
	}

	@Override
	public List<course> findBySort(String sort) {
		String hql = "FROM course c WHERE c.sort = :sort ";
		List<course> courses = entityManager.createQuery(hql,course.class).setParameter("sort", sort).getResultList();
		return courses;
	}

	@Override
	public List<course> findBylevel(String level) {
		String hql = "FROM course c WHERE c.level = :level ";
		List<course> courses = entityManager.createQuery(hql,course.class).setParameter("level", level).getResultList();
		return courses;
	}

	@Override
	public List<course> findBytitle(String title) {
		String hql = "FROM course c WHERE c.title = :title ";
		List<course> courses = entityManager.createQuery(hql,course.class).setParameter("title", title).getResultList();
		return courses;
	}

	
}
