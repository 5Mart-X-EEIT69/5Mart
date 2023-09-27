package com.ispan.eeit69.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.CourseDao;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.service.CourseService;

@Service
@Transactional
public class CourseServiceImpl implements CourseService{

	CourseDao CourseDao ;
	
	
//	@Autowired
	public CourseServiceImpl(CourseDao courseDao) {
		CourseDao = courseDao;
	}

	@Override
	public void save(Course course) {
		CourseDao.save(course);		
	}

	@Override
	public void update(Course course) {
		CourseDao.update(course);
		
	}

	@Override
	public Course findById(Integer id) {		
		return CourseDao.findById(id);
	}

	@Override
	public List<Course> findAll() {
		return CourseDao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		CourseDao.deleteById(id);
	}

	@Override
	public List<Course> findBySort(String sort) {
		return CourseDao.findBySort(sort);
	}

	@Override
	public List<Course> findBylevel(String level) {
		return CourseDao.findBylevel(level);
	}

	@Override
	public boolean existsBytitle(String title) {		
		return CourseDao.findBytitle(title) != null ? true : false;
	}

	@Override
	public List<Course> findBytitle(String title) {
		return CourseDao.findBytitle(title);
	}

	@Override
	public List<Course> findByKeyword(String keyword) {
		return CourseDao.findByKeyword(keyword);
	}
	
	
	
}
