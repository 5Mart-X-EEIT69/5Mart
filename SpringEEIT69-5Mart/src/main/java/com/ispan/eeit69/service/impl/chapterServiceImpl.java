package com.ispan.eeit69.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.chapterDao;
import com.ispan.eeit69.model.chapter;
import com.ispan.eeit69.service.chapterService;

@Service
@Transactional
public class chapterServiceImpl implements chapterService {

	chapterDao ChapterDao ;
	
//	@Autowired
	public chapterServiceImpl(chapterDao chapterDao) {
		ChapterDao = chapterDao;
	}

	@Override
	public void save(chapter chapter) {
		ChapterDao.save(chapter);

	}

	@Override
	public void update(chapter chapter) {
		ChapterDao.update(chapter);

	}

	@Override
	public chapter findById(Integer id) {
		return ChapterDao.findById(id);		
	}

	@Override
	public List<chapter> findAll() {
		return ChapterDao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		ChapterDao.deleteById(id);
	}

}
