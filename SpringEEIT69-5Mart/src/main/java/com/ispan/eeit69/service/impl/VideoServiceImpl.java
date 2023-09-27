package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.VideoRepository;
import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.service.VideoService;

@Service
@Transactional
public class VideoServiceImpl implements VideoService{
	
	final static Logger log = LoggerFactory.getLogger(VideoServiceImpl.class);
	
	VideoRepository videoRepository ;
	
	public VideoServiceImpl(VideoRepository videoRepository) {
		this.videoRepository = videoRepository;
	}

	@Override
	public void save(Video video) {
		System.out.println("test");
		log.info("=====>VideoServiceImpl#save()");
		videoRepository.save(video);		
	}

	@Override
	public Video update(Video video) {
		log.info("=====>VideoServiceImpl#update()");
		return videoRepository.save(video);
	}

	@Override
	public Video findById(Integer id) {
		Video video = null;
		log.info("=====>VideoServiceImpl#findById()");
		Optional<Video> opt = videoRepository.findById(id);
		if (opt.isPresent()) {
			video = opt.get();
		} else throw new RuntimeException("單元(鍵值=" + id + ")不存在");
		return video;
	}

	@Override
	public List<Video> findAll() {
		log.info("=====>VideoServiceImpl#findAll()");
		return videoRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>VideoServiceImpl#deleteById()");
		videoRepository.deleteById(id);
	}
	
//	videoService.findByUUID(uuid)方法
	
	@Override
	public Video findByUuid(String uuid) {
	    log.info("=====>VideoServiceImpl#findByUUID()");
	    Optional<Video> opt = videoRepository.findByUuid(uuid);  // 使用 findByUuid 方法來查找
	    if (opt.isPresent()) {
	        return opt.get();
	    } else {
	        throw new RuntimeException("Video (UUID=" + uuid + ") does not exist");
	    }
	}

//	videoService.findByUUID(uuid)方法	
	
}
