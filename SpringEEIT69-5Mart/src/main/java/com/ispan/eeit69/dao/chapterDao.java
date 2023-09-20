package com.ispan.eeit69.dao;

import java.util.List;

import com.ispan.eeit69.model.chapter;

public interface chapterDao {
	void save(chapter chapter);
	void update(chapter chapter);
	chapter findById(Integer id);
	List<chapter> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
}
