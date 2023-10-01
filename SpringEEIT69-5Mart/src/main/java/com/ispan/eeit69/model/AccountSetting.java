package com.ispan.eeit69.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="AccountSetting_5Mart")
public class AccountSetting implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer settingId;

    private String preferredLanguage; // 希望的網頁語言
    private Boolean showRealName;     // 是否對外顯示真實姓名
    private Boolean receiveMarketingInfo;  // 是否願意接收行銷資訊

    @OneToOne()
    @JoinColumn(name = "member_id")
    private member member; // 對應的 member
    
    
    // getters and setters
    

	public Integer getSettingId() {
		return settingId;
	}

	public void setSettingId(Integer settingId) {
		this.settingId = settingId;
	}

	public String getPreferredLanguage() {
		return preferredLanguage;
	}

	public void setPreferredLanguage(String preferredLanguage) {
		this.preferredLanguage = preferredLanguage;
	}

	public Boolean getShowRealName() {
		return showRealName;
	}

	public void setShowRealName(Boolean showRealName) {
		this.showRealName = showRealName;
	}

	public Boolean getReceiveMarketingInfo() {
		return receiveMarketingInfo;
	}

	public void setReceiveMarketingInfo(Boolean receiveMarketingInfo) {
		this.receiveMarketingInfo = receiveMarketingInfo;
	}

	public member getMember() {
		return member;
	}

	public void setMember(member member) {
		this.member = member;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
