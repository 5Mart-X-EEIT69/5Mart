package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Chapter;

public interface ChapterService {
	Chapter save(Chapter chapter);
	void update(Chapter chapter);
	Chapter findById(Integer id);
	List<Chapter> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
}
