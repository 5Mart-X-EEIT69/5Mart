package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ispan.eeit69.dao.StudentQuestionRepository;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.service.StudentQuestionService;

import jakarta.transaction.Transactional;
@Service
@Transactional
public class StudentQuestionServiceImpl implements StudentQuestionService {

	final static Logger log = LoggerFactory.getLogger(StudentQuestionServiceImpl.class);
	@Autowired
	StudentQuestionRepository studentQuestionRepository;

	public StudentQuestionServiceImpl(StudentQuestionRepository studentAskRepository) {
		this.studentQuestionRepository = studentQuestionRepository;
	}

	@Override
	public void save(StudentQuestion studentAsk) {
		log.info("=====>StudentAskServiceImpl#save()");
		studentQuestionRepository.save(studentAsk);

	}

	@Override
	public StudentQuestion update(StudentQuestion studentAsk) {
		log.info("=====>StudentAskServiceImpl#update()");
		return studentQuestionRepository.save(studentAsk);
	}

	@Override
	public StudentQuestion findById(Integer id) {
		StudentQuestion studentAsk = null;
		log.info("=====>StudentAskServiceImpl#findById()");
		Optional<StudentQuestion> opt = studentQuestionRepository.findById(id);
		if (opt.isPresent()) {
			studentAsk = opt.get();
		} else throw new RuntimeException("圖片(鍵值=" + id + ")不存在");
		return studentAsk;
	}

	@Override
	public List<StudentQuestion> findAll() {
		log.info("=====>StudentAskServiceImpl#findAll()");
		return studentQuestionRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>StudentAskServiceImpl#deleteById()");
		studentQuestionRepository.deleteById(id);

	}

	@Override
	public List<StudentQuestion> findByCourse(Course course) {
		log.info("=====>StudentAskServiceImpl#findByCourse()");
		return studentQuestionRepository.findByCourse(course);
	}





}
