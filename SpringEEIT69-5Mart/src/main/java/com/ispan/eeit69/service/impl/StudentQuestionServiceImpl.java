package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ispan.eeit69.dao.StudentQuestionRepository;
import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.service.StudentQuestionService;

public class StudentQuestionServiceImpl implements StudentQuestionService {

	final static Logger log = LoggerFactory.getLogger(StudentQuestionServiceImpl.class);

	StudentQuestionRepository studentAskRepository;

	public StudentQuestionServiceImpl(StudentQuestionRepository studentAskRepository) {
		this.studentAskRepository = studentAskRepository;
	}

	@Override
	public void save(StudentQuestion studentAsk) {
		log.info("=====>StudentAskServiceImpl#save()");
		studentAskRepository.save(studentAsk);

	}

	@Override
	public StudentQuestion update(StudentQuestion studentAsk) {
		log.info("=====>StudentAskServiceImpl#update()");
		return studentAskRepository.save(studentAsk);
	}

	@Override
	public StudentQuestion findById(Integer id) {
		StudentQuestion studentAsk = null;
		log.info("=====>StudentAskServiceImpl#findById()");
		Optional<StudentQuestion> opt = studentAskRepository.findById(id);
		if (opt.isPresent()) {
			studentAsk = opt.get();
		} else throw new RuntimeException("圖片(鍵值=" + id + ")不存在");
		return studentAsk;
	}

	@Override
	public List<StudentQuestion> findAll() {
		log.info("=====>StudentAskServiceImpl#findAll()");
		return studentAskRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>StudentAskServiceImpl#deleteById()");
		studentAskRepository.deleteById(id);

	}

}
