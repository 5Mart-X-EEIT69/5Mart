package com.ispan.eeit69.service;

import java.sql.Timestamp;
import java.util.List;

import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.member;

public interface AnnouncementService {

	void save(Announcement announcement);
	Announcement update(Announcement announcement);
	Announcement findById(Integer id);
	List<Announcement> findAll();
	void deleteById(Integer id);
	
	Announcement findByCourse(Course course);
	
}
