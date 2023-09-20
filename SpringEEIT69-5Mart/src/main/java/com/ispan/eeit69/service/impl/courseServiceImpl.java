package com.ispan.eeit69.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.courseDao;
import com.ispan.eeit69.model.course;
import com.ispan.eeit69.service.courseService;

@Service
@Transactional
public class courseServiceImpl implements courseService{

	courseDao CourseDao ;
	
	
//	@Autowired
	public courseServiceImpl(courseDao courseDao) {
		CourseDao = courseDao;
	}

	@Override
	public void save(course course) {
		CourseDao.save(course);		
	}

	@Override
	public void update(course course) {
		CourseDao.update(course);
		
	}

	@Override
	public course findById(Integer id) {		
		return CourseDao.findById(id);
	}

	@Override
	public List<course> findAll() {
		return CourseDao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		CourseDao.deleteById(id);
	}

	@Override
	public List<course> findBySort(String sort) {
		return CourseDao.findBySort(sort);
	}

	@Override
	public List<course> findBylevel(String level) {
		return CourseDao.findBylevel(level);
	}

	@Override
	public boolean existsBytitle(String title) {		
		return CourseDao.findBytitle(title) != null ? true : false;
	}

	@Override
	public List<course> findBytitle(String title) {
		return CourseDao.findBytitle(title);
	}
	
}
