package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Course;

public interface CourseService {
	Course save(Course course);
	void update(Course course);
	Course findById(Integer id);
	List<Course> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<Course> findBySort(String sort);//配合網站需求自定義的Service
	List<Course> findBylevel(String level);//配合網站需求自定義的Service
	List<Course> findBytitle(String title);//配合網站需求自定義的Service
	boolean existsBytitle(String employeeId);//配合網站需求自定義的Service
	
	List<Course> findByKeyword(String keyword); //  搜尋關鍵字
	List<Course> findByTeacherId(Integer id); //  搜尋關鍵字
	
}
