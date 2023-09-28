package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Video;

public interface VideoService {
	void save(Video video);
	Video update(Video video);
	Video findById(Integer id);
	List<Video> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	// Video findByUuid(String uuid);  // 新增的方法，用來找UUID

}
