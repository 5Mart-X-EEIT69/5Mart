package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.DEV_Video;

public interface DEV_VideoService {
	void save(DEV_Video video);
	DEV_Video update(DEV_Video video);
	DEV_Video findById(Integer id);
	List<DEV_Video> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	DEV_Video findByUuid(String uuid);  // 新增的方法，用來找UUID

}
