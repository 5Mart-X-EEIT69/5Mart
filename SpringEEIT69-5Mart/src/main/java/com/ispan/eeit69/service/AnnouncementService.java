package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Announcement;

public interface AnnouncementService {

	void save(Announcement announcement);
	Announcement update(Announcement announcement);
	Announcement findById(Integer id);
	List<Announcement> findAll();
	void deleteById(Integer id);
}
