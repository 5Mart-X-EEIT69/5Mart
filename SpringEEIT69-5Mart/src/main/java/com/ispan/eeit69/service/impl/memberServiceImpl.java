package com.ispan.eeit69.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ispan.eeit69.dao.memberDao;
import com.ispan.eeit69.model.AccountSetting;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.memberService;

@Service
@Transactional
public class memberServiceImpl implements memberService {
	
	private static Logger log = LoggerFactory.getLogger(memberServiceImpl.class);

	memberDao memberDao;
	
	public memberServiceImpl(memberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public void save(member member) {
		memberDao.save(member);
	}

	@Override
	public member findByMemberId(Integer id) {
		return memberDao.findByMemberId(id);
	}

	@Override
	public member findByAccountAndPassword(String account, String password) {
		return memberDao.findByAccountAndPassword(account, password);
	}

	@Override
	public void update(member member) {
		memberDao.update(member);
	}

	@Override
	public void deleteById(Integer id) {
		memberDao.deleteById(id);
		
	}

	@Override
	public boolean existsById(String account) {
		log.info("會員註冊功能之Service: 檢查會員輸入的編號是否已被使用");
		Boolean isExist = false;
		isExist = memberDao.existsById(account);
		return isExist;
	}
	
    @Override
    public void registerNewMember(member newMember) {
        // 創建一個新的 AccountSetting 對象
        AccountSetting accountSetting = new AccountSetting();
        // 填充 accountSetting 的屬性，這裡可以設置一些預設值
        accountSetting.setPreferredLanguage("zh");
        accountSetting.setShowRealName(false);
        accountSetting.setReceiveMarketingInfo(false);

        // 將 AccountSetting 對象關聯到 member 對象
        newMember.setAccountSetting(accountSetting);
        // 反過來也要設置，建立雙向關聯
        accountSetting.setMember(newMember);

        // 最後，保存這個新的 member 對象到資料庫
        memberDao.save(newMember);
    }

}
