package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.StudentQuestion;

public interface StudentQuestionService {

	void save(StudentQuestion studentQuestion);
	StudentQuestion update(StudentQuestion studentQuestion);
	StudentQuestion findById(Integer id);
	List<StudentQuestion> findAll();
	void deleteById(Integer id);

		
	
	
}
