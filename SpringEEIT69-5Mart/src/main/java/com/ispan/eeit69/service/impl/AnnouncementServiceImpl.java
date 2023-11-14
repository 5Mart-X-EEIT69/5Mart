package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ispan.eeit69.dao.AnnouncementRepository;
import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.service.AnnouncementService;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AnnouncementServiceImpl implements AnnouncementService{

	final static Logger log = LoggerFactory.getLogger(AnnouncementServiceImpl.class);

	AnnouncementRepository announcementRepository;

	public AnnouncementServiceImpl(AnnouncementRepository announcementRepository) {
		this.announcementRepository = announcementRepository;
	}

	@Override
	public void save(Announcement announcement) {
		log.info("=====>AnnouncementServiceImpl#save()");
		announcementRepository.save(announcement);
		
	}

	@Override
	public Announcement update(Announcement announcement) {
		log.info("=====>AnnouncementServiceImpl#update()");
		return announcementRepository.save(announcement);
	}

	@Override
	public Announcement findById(Integer id) {
		Announcement announcement = null;
		log.info("=====>AnnouncementServiceImpl#findById()");
		Optional<Announcement> opt = announcementRepository.findById(id);
		if (opt.isPresent()) {
			announcement = opt.get();
		} else throw new RuntimeException("公告(鍵值=" + id + ")不存在");
		return announcement;
	}
	

	@Override
	public List<Announcement> findAll() {
		log.info("=====>AnnouncementServiceImpl#findAll()");
		return announcementRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>AnnouncementServiceImpl#deleteById()");
		announcementRepository.deleteById(id);
		
	}


	@Override
	public Announcement findByCourse(Course course) {
		log.info("=====>AnnouncementServiceImpl#findByCourse()");
		return announcementRepository.findByCourse(course);
	}
	
	
	
}
