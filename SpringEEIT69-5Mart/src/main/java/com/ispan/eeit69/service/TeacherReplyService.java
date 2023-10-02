package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.model.TeacherReply;
import com.ispan.eeit69.model.member;

public interface TeacherReplyService {

	void save(TeacherReply teacherReply);
	TeacherReply update(TeacherReply teacherReply);
	TeacherReply findById(Integer id);
	List<TeacherReply> findAll();
	void deleteById(Integer id);
	TeacherReply getTeacherReplyById(Integer id);
	
//	TeacherReply findByStudentQuestion(StudentQuestion studentQuestion);
	
//	List<TeacherReply> getTeacherRepliesByStudentQuestionId(Long studentQuestionId);
//    void saveTeacherReply(TeacherReply teacherReply);

}
