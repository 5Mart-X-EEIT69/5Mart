package com.ispan.eeit69.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.member;

@Repository
public interface IntroductionRepository extends JpaRepository<Introduction, Integer> {

	Introduction findByMember(member member);
}