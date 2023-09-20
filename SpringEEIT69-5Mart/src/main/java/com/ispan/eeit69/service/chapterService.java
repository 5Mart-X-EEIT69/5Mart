package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.chapter;

public interface chapterService {
	void save(chapter chapter);
	void update(chapter chapter);
	chapter findById(Integer id);
	List<chapter> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
}
