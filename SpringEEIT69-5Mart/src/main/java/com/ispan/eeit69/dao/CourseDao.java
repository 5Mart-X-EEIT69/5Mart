package com.ispan.eeit69.dao;

import java.util.List;

import com.ispan.eeit69.model.Course;

public interface CourseDao {

	void save(Course course);
	void update(Course course);
	Course findById(Integer id);
	List<Course> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<Course> findBySort(String sort);//配合網站需求自定義的Dao
	List<Course> findBylevel(String level);//配合網站需求自定義的Dao
	List<Course> findBytitle(String title);//配合網站需求自定義的Dao
}
