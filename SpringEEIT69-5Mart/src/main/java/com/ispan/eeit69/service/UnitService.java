package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Unit;

public interface UnitService {
	Unit save(Unit unit);
	Unit update(Unit unit);
	Unit findById(Integer id);
	List<Unit> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
}
