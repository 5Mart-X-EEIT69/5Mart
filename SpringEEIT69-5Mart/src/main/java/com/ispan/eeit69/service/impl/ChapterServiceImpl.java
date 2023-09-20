package com.ispan.eeit69.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.ChapterDao;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.service.ChapterService;

@Service
@Transactional
public class ChapterServiceImpl implements ChapterService {

	ChapterDao ChapterDao ;
	
//	@Autowired
	public ChapterServiceImpl(ChapterDao chapterDao) {
		ChapterDao = chapterDao;
	}

	@Override
	public Chapter save(Chapter chapter) {
		ChapterDao.save(chapter);
		return chapter ;
	}

	@Override
	public void update(Chapter chapter) {
		ChapterDao.update(chapter);

	}

	@Override
	public Chapter findById(Integer id) {
		return ChapterDao.findById(id);		
	}

	@Override
	public List<Chapter> findAll() {
		return ChapterDao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		ChapterDao.deleteById(id);
	}

}
