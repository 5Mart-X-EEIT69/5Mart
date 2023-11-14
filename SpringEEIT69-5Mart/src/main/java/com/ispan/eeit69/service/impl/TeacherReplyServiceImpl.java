package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ispan.eeit69.dao.TeacherReplyRepository;
import com.ispan.eeit69.model.TeacherReply;
import com.ispan.eeit69.service.TeacherReplyService;

import jakarta.transaction.Transactional;
@Service
@Transactional
public class TeacherReplyServiceImpl implements TeacherReplyService {

	final static Logger log = LoggerFactory.getLogger(TeacherReplyServiceImpl.class);

	TeacherReplyRepository teacherReplyRepository;

	public TeacherReplyServiceImpl(TeacherReplyRepository teacherReplyRepository) {
		this.teacherReplyRepository = teacherReplyRepository;
	}

	@Override
	public void save(TeacherReply teacherReply) {
		log.info("=====>TeacherReplyServiceImpl#save()");
		teacherReplyRepository.save(teacherReply);

	}

	@Override
	public TeacherReply update(TeacherReply teacherReply) {
		log.info("=====>TeacherReplyServiceImpl#update()");
		return teacherReplyRepository.save(teacherReply);
	}

	@Override
	public TeacherReply findById(Integer id) {
		TeacherReply teacherReply = null;
		log.info("=====>TeacherReplyServiceImpl#findById()");
		Optional<TeacherReply> opt = teacherReplyRepository.findById(id);
		if (opt.isPresent()) {
			teacherReply = opt.get();
		} else throw new RuntimeException("教師回覆(鍵值=" + id + ")不存在");
		return teacherReply;
	}

	@Override
	public List<TeacherReply> findAll() {
		log.info("=====>TeacherReplyServiceImpl#findAll()");
		return teacherReplyRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>TeacherReplyServiceImpl#deleteById()");
		teacherReplyRepository.deleteById(id);


	}

	@Override
	public TeacherReply getTeacherReplyById(Integer id) {
		Optional<TeacherReply> optionalTeacherReply = teacherReplyRepository.findById(id);
        return optionalTeacherReply.orElse(null);
	}

//	@Override
//	public TeacherReply findByStudentQuestion(StudentQuestion studentQuestion) {
//		log.info("=====>IntroductionServiceImpl#findAll()");
//		return teacherReplyRepository.findByStudentQuestion(studentQuestion);
//	}

//	@Override
//    public List<TeacherReply> getTeacherRepliesByStudentQuestionId(Long studentQuestionId) {
//        return teacherReplyRepository.findByStudentQuestionId(studentQuestionId);
//    }
//
//    @Override
//    public void saveTeacherReply(TeacherReply teacherReply) {
//        teacherReplyRepository.save(teacherReply);
//    }


}
