package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.IntroductionRepository;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.IntroductionService;



@Service
@Transactional
public class IntroductionServiceImpl implements IntroductionService {

	final static Logger log = LoggerFactory.getLogger(IntroductionServiceImpl.class);
	
	IntroductionRepository introductionRepository ;
	
	
	
	public IntroductionServiceImpl(IntroductionRepository introductionRepository) {
		this.introductionRepository = introductionRepository;
	}

	@Override
	public void save(Introduction introduction) {
		
		log.info("=====>IntroductionServiceImpl#save()");
		introductionRepository.save(introduction);

	}

	@Override
	public Introduction update(Introduction introduction) {
		log.info("=====>IntroductionServiceImpl#update()");
		return introductionRepository.save(introduction);
		
	}

	@Override
	public Introduction findById(Integer id) {
		Introduction introduction = null;
		log.info("=====>IntroductionServiceImpl#findById()");
		Optional<Introduction> opt = introductionRepository.findById(id);
		if (opt.isPresent()) {
			introduction = opt.get();
		} else throw new RuntimeException("自我介紹(鍵值=" + id + ")不存在");
		return introduction;
	}

	@Override
	public List<Introduction> findAll() {
		log.info("=====>IntroductionServiceImpl#findAll()");
		return introductionRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>IntroductionServiceImpl#deleteById()");
		introductionRepository.deleteById(id);

	}

	@Override
	public Introduction findByMember(member member) {
		log.info("=====>IntroductionServiceImpl#findAll()");
		return introductionRepository.findByMember(member);
	}

}