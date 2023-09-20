package com.ispan.eeit69.service;

import com.ispan.eeit69.model.member;

public interface memberService {
	void save(member member);

    member findByMemberId(String id);
    
    member findByMemberIdAndPassword(String memberId, String password);

}
