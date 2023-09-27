package com.ispan.eeit69.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="Introduction_5Mart")
public class Introduction {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer IntroductionId;
	
	private String IntroductionText;
	
	private String Expertise;
	
	private String Blog;
	
	private String Youtube;
	
	private String Facebook;
	
	public member getMember() {
		return member;
	}

	public void setMember(member member) {
		this.member = member;
	}

	@OneToOne()
    @JoinColumn(name = "member_id")
    private member member;

	

	public Introduction(String introductionText, String expertise, String blog, String youtube, String facebook,
			com.ispan.eeit69.model.member member) {
		IntroductionText = introductionText;
		Expertise = expertise;
		Blog = blog;
		Youtube = youtube;
		Facebook = facebook;
		this.member = member;
	}

	public Introduction() {
		
	}

	public Integer getIntroductionId() {
		return IntroductionId;
	}

	public void setIntroductionId(Integer introductionId) {
		IntroductionId = introductionId;
	}

	public String getIntroductionText() {
		return IntroductionText;
	}

	public void setIntroductionText(String introductionText) {
		IntroductionText = introductionText;
	}

	public String getExpertise() {
		return Expertise;
	}

	public void setExpertise(String expertise) {
		Expertise = expertise;
	}

	public String getBlog() {
		return Blog;
	}

	public void setBlog(String blog) {
		Blog = blog;
	}

	public String getYoutube() {
		return Youtube;
	}

	public void setYoutube(String youtube) {
		Youtube = youtube;
	}

	public String getFacebook() {
		return Facebook;
	}

	public void setFacebook(String facebook) {
		Facebook = facebook;
	}

	@Override
	public String toString() {
		return "Introduction [IntroductionId=" + IntroductionId + ", IntroductionText=" + IntroductionText
				+ ", Expertise=" + Expertise + ", Blog=" + Blog + ", Youtube=" + Youtube + ", Facebook=" + Facebook
				+ ", member=" + member + "]";
	}

	
	
}