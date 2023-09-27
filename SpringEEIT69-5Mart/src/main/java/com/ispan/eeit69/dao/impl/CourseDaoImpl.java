package com.ispan.eeit69.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ispan.eeit69.dao.CourseDao;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.service.impl.CourseServiceImpl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class CourseDaoImpl implements CourseDao{

	@PersistenceContext //類似Autowired
	EntityManager entityManager; // session
	


	@Override
	public void save(Course course) {
		entityManager.persist(course);
		
	}

	@Override
	public void update(Course course) {
		Course tmp = findById(course.getId());
		tmp.setRegisterTime(tmp.getRegisterTime());
		entityManager.detach(tmp);
	}

	@Override
	public Course findById(Integer id) {
		Course result = entityManager.find(Course.class, id);
		return result;
	}

	@Override
	public List<Course> findAll() {
		
		String hql = "FROM Course";
		List<Course> courses = entityManager.createQuery(hql,Course.class).getResultList(); 
		
		return courses;
	}

	@Override
	public void deleteById(Integer id) {
		String hql = "DELETE FROM Course c WHERE c.id = :id";
		entityManager.createQuery(hql).setParameter("id", id).executeUpdate();
		
	}

	@Override
	public List<Course> findBySort(String sort) {
		String hql = "FROM Course c WHERE c.sort = :sort ";
		List<Course> courses = entityManager.createQuery(hql,Course.class).setParameter("sort", sort).getResultList();
		return courses;
	}

	@Override
	public List<Course> findBylevel(String level) {
		String hql = "FROM Course c WHERE c.level = :level ";
		List<Course> courses = entityManager.createQuery(hql,Course.class).setParameter("level", level).getResultList();
		return courses;
	}

	@Override
	public List<Course> findBytitle(String title) {
		String hql = "FROM Course c WHERE c.title = :title ";
		List<Course> courses = entityManager.createQuery(hql,Course.class).setParameter("title", title).getResultList();
		return courses;
	}

	@Override
	public List<Course> findByKeyword(String keyword) {
		
		String hql = "FROM Course WHERE title LIKE :keyword";
//		SELECT * FROM course_5mart WHERE title LIKE '%java%'
		List<Course> courses = entityManager.createQuery(hql, Course.class).setParameter("keyword", "%" + keyword + "%").getResultList();
		return courses;
	}

	
	
}
