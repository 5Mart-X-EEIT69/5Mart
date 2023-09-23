package com.ispan.eeit69.dao;

import com.ispan.eeit69.model.member;

public interface memberDao {
	void save(member member);
	void update(member member);
	void deleteById(Integer id);
    member findByMemberId(Integer id);
    
    member findByMemberIdAndPassword(String memberId, String password);

}
