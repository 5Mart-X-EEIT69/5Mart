package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.DEV_VideoRepository;
import com.ispan.eeit69.model.DEV_Video;
import com.ispan.eeit69.service.DEV_VideoService;

@Service
@Transactional
public class DEV_VideoServiceImpl implements DEV_VideoService{
	
	final static Logger log = LoggerFactory.getLogger(DEV_VideoServiceImpl.class);
	
	DEV_VideoRepository DEV_VideoRepository ;
	
	public DEV_VideoServiceImpl(DEV_VideoRepository DEV_VideoRepository) {
		this.DEV_VideoRepository = DEV_VideoRepository;
	}

	@Override
	public void save(Video video) {
		System.out.println("test");
		log.info("=====>DEV_VideoServiceImpl#save()");
		DEV_VideoRepository.save(video);		
	}

	@Override
	public Video update(Video video) {
		log.info("=====>DEV_VideoServiceImpl#update()");
		return DEV_VideoRepository.save(video);
	}

	@Override
	public Video findById(Integer id) {
		Video video = null;
		log.info("=====>DEV_VideoServiceImpl#findById()");
		Optional<Video> opt = DEV_VideoRepository.findById(id);
		if (opt.isPresent()) {
			video = opt.get();
		} else throw new RuntimeException("單元(鍵值=" + id + ")不存在");
		return video;
	}

	@Override
	public List<Video> findAll() {
		log.info("=====>DEV_VideoServiceImpl#findAll()");
		return DEV_VideoRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>DEV_VideoServiceImpl#deleteById()");
		DEV_VideoRepository.deleteById(id);
	}
	
	DEV_VideoRepository.findByUUID(uuid)方法
	
	@Override
	public Video findByUuid(String uuid) {
	    log.info("=====>DEV_VideoServiceImpl#findByUUID()");
	    Optional<Video> opt = DEV_VideoRepository.findByUuid(uuid);  // 使用 findByUuid 方法來查找
	    if (opt.isPresent()) {
	        return opt.get();
	    } else {
	        throw new RuntimeException("Video (UUID=" + uuid + ") does not exist");
	    }
	}

//	videoService.findByUUID(uuid)方法	
	
}
