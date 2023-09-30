package com.ispan.eeit69.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.CourseDao;
import com.ispan.eeit69.dao.CourseRepository;
import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.TeacherReply;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.CourseService;

@Service
@Transactional
public class CourseServiceImpl implements CourseService{

	CourseDao CourseDao ;
	@Autowired 
	CourseRepository courseRepository;
	
//	@Autowired
	public CourseServiceImpl(CourseDao courseDao) {
		CourseDao = courseDao;
	}

	@Override
	public Course save(Course course) {
		CourseDao.save(course);
		return course;
	}

	@Override
	public void update(Course course) {
		CourseDao.update(course);
		
	}

	@Override
	public Course findById(Integer id) {		
		return CourseDao.findById(id);
	}

	@Override
	public List<Course> findAll() {
		return CourseDao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		CourseDao.deleteById(id);
	}

	@Override
	public List<Course> findBySort(String sort) {
		return CourseDao.findBySort(sort);
	}

	@Override
	public List<Course> findBylevel(String level) {
		return CourseDao.findBylevel(level);
	}

	@Override
	public boolean existsBytitle(String title) {		
		return CourseDao.findBytitle(title) != null ? true : false;
	}

	@Override
	public List<Course> findBytitle(String title) {
		return CourseDao.findBytitle(title);
	}

	@Override
	public List<Course> findByKeyword(String keyword) {
		return CourseDao.findByKeyword(keyword);
	}

	@Override
	public List<Course> findByTeacherId(Integer id) {
		return CourseDao.findByTeacherId(id);
	}

	@Override
	public Course findByMember(member member) {
		return CourseDao.findByMember(member);
		
	}

	@Override
	public List<Course> findByTeacher(member teacher) {
        return courseRepository.findByTeacher(teacher);
	}

	@Override
	public List<Course> getCoursesByTeacher(member teacher) {
		return courseRepository.findByTeacher(teacher);
	}

	@Override
	public List<Course> getCoursesWithAnnouncementsByTeacher(member teacher) {
		
		return courseRepository.findByTeacher(teacher);
	}
	
	@Override
    public void updateAnnouncementForTeacher(Integer courseId, String announcementContent,Timestamp announcementTime,member teacher) {
        Optional<Course> optionalCourse = courseRepository.findByIdAndTeacher(courseId, teacher);
        
        if (optionalCourse.isPresent()) {
            Course course = optionalCourse.get();
            Announcement announcement = course.getAnnouncement();
            
            if (announcement == null) {
                announcement = new Announcement();        
                announcement.setCourse(course);
                course.setAnnouncement(announcement);
                announcement.setAnnouncementTime(new Timestamp(System.currentTimeMillis()));

            }
            announcement.setAnnouncementTime(new Timestamp(System.currentTimeMillis()));
            announcement.setContent(announcementContent);
            courseRepository.save(course);
        } else {
            // Handle error case
        }
    }

	@Override
	public void updateReplyForTeacher(Integer courseId, String TeacherReply, member teacher) {
		Optional<Course> optionalCourse = courseRepository.findByIdAndTeacher(courseId, teacher);
		
//		if (optionalCourse.isPresent()) {
//            Course course = optionalCourse.get();
//            TeacherReply teacherReply = course.getTeacherReply();
//		
	}

	
}
