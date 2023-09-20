package com.ispan.eeit69.dao;

import com.ispan.eeit69.model.member;

public interface memberDao {
	void save(member member);

    member findByMemberId(String id);
    
    member findByMemberIdAndPassword(String memberId, String password);

}
