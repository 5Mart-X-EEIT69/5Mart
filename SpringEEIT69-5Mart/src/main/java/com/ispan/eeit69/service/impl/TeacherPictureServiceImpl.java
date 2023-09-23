package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ispan.eeit69.dao.TeacherPictureRepository;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.service.TeacherPictureService;

@Service
public class TeacherPictureServiceImpl implements TeacherPictureService {

	final static Logger log = LoggerFactory.getLogger(TeacherPictureServiceImpl.class);
	
	TeacherPictureRepository teacherPictureRepository;

	
	
	public TeacherPictureServiceImpl(TeacherPictureRepository teacherPictureRepository) {
		this.teacherPictureRepository = teacherPictureRepository;
	}

	@Override
	public void save(TeacherPicture teacherPicture) {
		log.info("=====>TeacherPictureServiceImpl#save()");
		teacherPictureRepository.save(teacherPicture);
		
	}

	@Override
	public TeacherPicture update(TeacherPicture teacherPicture) {
		log.info("=====>TeacherPictureServiceImpl#update()");
		return teacherPictureRepository.save(teacherPicture);
	}

	@Override
	public TeacherPicture findById(Integer id) {
		TeacherPicture teacherPicture = null;
		log.info("=====>TeacherPictureServiceImpl#findById()");
		Optional<TeacherPicture> opt = teacherPictureRepository.findById(id);
		if (opt.isPresent()) {
			teacherPicture = opt.get();
		} else throw new RuntimeException("圖片(鍵值=" + id + ")不存在");
		return teacherPicture;
	}

	@Override
	public List<TeacherPicture> findAll() {
		log.info("=====>TeacherPictureServiceImpl#findAll()");
		return teacherPictureRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>TeacherPictureServiceImpl#deleteById()");
		teacherPictureRepository.deleteById(id);

		
	}
	
	
	
}
