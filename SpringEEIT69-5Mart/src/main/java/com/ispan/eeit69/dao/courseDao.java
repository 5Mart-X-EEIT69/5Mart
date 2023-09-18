package com.ispan.eeit69.dao;

import java.util.List;

import com.ispan.eeit69.model.course;

public interface courseDao {

	void save(course course);
	void update(course course);
	course findById(Integer id);
	List<course> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<course> findBySort(String sort);//配合網站需求自定義的Dao
	List<course> findBylevel(String level);//配合網站需求自定義的Dao
	List<course> findBytitle(String title);//配合網站需求自定義的Dao
}
