package com.ispan.eeit69.service;

import com.ispan.eeit69.model.member;

public interface memberService {
	void save(member member);

    member findByMemberId(Integer id);
    
    member findByAccountAndPassword(String account, String password);

	void update(member member);
	
	void deleteById(Integer id);
	
	boolean existsById(String account);
	
	//新增用來處理自動新增帳號設定關聯
	void registerNewMember(member newMember);
}

