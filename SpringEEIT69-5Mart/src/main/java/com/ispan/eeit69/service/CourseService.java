package com.ispan.eeit69.service;

import java.sql.Timestamp;
import java.util.List;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.member;

public interface CourseService {
	Course save(Course course);
	void update(Course course);
	Course findById(Integer id);
	List<Course> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<Course> findBySort(String sort);//配合網站需求自定義的Service
	List<Course> findBylevel(String level);//配合網站需求自定義的Service
	List<Course> findBytitle(String title);//配合網站需求自定義的Service
	boolean existsBytitle(String employeeId);//配合網站需求自定義的Service
	
	List<Course> findByKeyword(String keyword); //  搜尋關鍵字
	List<Course> findByTeacherId(Integer id); //  搜尋關鍵字
	List<Course> findByTeacher(member teacher);
	Course findByMember(member member);
	 List<Course> getCoursesByTeacher(member teacher);
	 List<Course> getCoursesWithAnnouncementsByTeacher(member teacher);
	 void updateAnnouncementForTeacher(Integer courseId, String content,Timestamp announcementTime,member teacher);
	
	 
//	 void updateReplyForTeacher(Integer courseId, String TeacherReply,member teacher);
	 
	
}
