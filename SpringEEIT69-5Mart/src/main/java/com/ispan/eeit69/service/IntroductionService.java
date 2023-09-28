package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.member;


public interface IntroductionService {
	void save(Introduction introduction);
	Introduction update(Introduction introduction);
	Introduction findById(Integer id);
	List<Introduction> findAll();
	void deleteById(Integer id);
	Introduction findByMember(member member);
}