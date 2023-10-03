package com.ispan.eeit69.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.StudentQuestion;
@Repository
public interface StudentQuestionRepository extends JpaRepository<StudentQuestion, Integer>{
	List<StudentQuestion> findByCourse(Course course);
}
