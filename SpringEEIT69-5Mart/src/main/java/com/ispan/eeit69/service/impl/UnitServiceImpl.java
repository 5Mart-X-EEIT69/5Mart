package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.UnitRepository;
import com.ispan.eeit69.model.Unit;
import com.ispan.eeit69.service.UnitService;

@Service
@Transactional
public class UnitServiceImpl implements UnitService {
	
	final static Logger log = LoggerFactory.getLogger(UnitServiceImpl.class);
	
	UnitRepository unitRepository ;

	
	
	public UnitServiceImpl(UnitRepository unitRepository) {
		this.unitRepository = unitRepository;
	}

	@Override
	public Unit save(Unit unit) {
		log.info("=====>UnitServiceImpl#save()");
		unitRepository.save(unit);
		return unit;

	}

	@Override
	public Unit update(Unit unit) {
		log.info("=====>UnitServiceImpl#update()");		
		return unitRepository.save(unit);
	}

	@Override
	public Unit findById(Integer id) {
		Unit unit = null;
		log.info("=====>UnitServiceImpl#findById()");
		Optional<Unit> opt = unitRepository.findById(id);
		if (opt.isPresent()) {
			unit = opt.get();
		} else throw new RuntimeException("單元(鍵值=" + id + ")不存在");
		return unit;
	}

	@Override
	public List<Unit> findAll() {
		log.info("=====>UnitServiceImpl#findAll()");
		return unitRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>UnitServiceImpl#deleteById()");
		unitRepository.deleteById(id);
	}

}
