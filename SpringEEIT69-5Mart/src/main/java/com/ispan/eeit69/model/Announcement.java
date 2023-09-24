package com.ispan.eeit69.model;

import java.sql.Timestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="announcement_5Mart")
public class Announcement {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer announcementid;
	
	private Timestamp announcementTime;
	
	private String content;

	public Announcement(Timestamp announcementTime, String content) {
		this.announcementTime = announcementTime;
		this.content = content;
	}

	public Integer getAnnouncementid() {
		return announcementid;
	}

	public void setAnnouncementid(Integer announcementid) {
		this.announcementid = announcementid;
	}

	public Timestamp getAnnouncementTime() {
		return announcementTime;
	}

	public void setAnnouncementTime(Timestamp announcementTime) {
		this.announcementTime = announcementTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Announcement [announcementid=" + announcementid + ", announcementTime=" + announcementTime
				+ ", content=" + content + "]";
	}
	
	
	
}
