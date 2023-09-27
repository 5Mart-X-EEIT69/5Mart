package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.member;

public interface TeacherPictureService {
	void save(TeacherPicture teacherPicture);
	TeacherPicture update(TeacherPicture teacherPicture);
	TeacherPicture findById(Integer id);
	List<TeacherPicture> findAll();
	void deleteById(Integer id);
	TeacherPicture findByMember(member member);
}
