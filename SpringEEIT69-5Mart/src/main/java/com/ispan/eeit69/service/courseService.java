package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.course;

public interface courseService {
	void save(course course);
	void update(course course);
	course findById(Integer id);
	List<course> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<course> findBySort(String sort);//配合網站需求自定義的Service
	List<course> findBylevel(String level);//配合網站需求自定義的Service
	List<course> findBytitle(String title);//配合網站需求自定義的Service
	boolean existsBytitle(String employeeId);//配合網站需求自定義的Service
}
