package com.ispan.eeit69.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.model.TeacherReply;
import com.ispan.eeit69.model.member;
@Repository
public interface TeacherReplyRepository extends JpaRepository<TeacherReply, Integer>{
	TeacherReply findByStudentQuestion(StudentQuestion studentQuestion);
}
