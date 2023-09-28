package com.ispan.eeit69.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.member;

@Repository
public interface AnnouncementRepository extends JpaRepository<Announcement, Integer>{

	Announcement findByCourse(Course course);
}
