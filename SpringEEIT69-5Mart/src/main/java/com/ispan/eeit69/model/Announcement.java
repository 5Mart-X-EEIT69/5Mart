package com.ispan.eeit69.model;

import java.sql.Timestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="announcement_5Mart")
public class Announcement {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer announcementId;
	
	private Timestamp announcementTime;
	
	private String content;
	
	@OneToOne()
    @JoinColumn(name = "course_id")
    private Course course;

	public Announcement() {
		
	}

	public Announcement(Timestamp announcementTime, String content, Course course) {

		this.announcementTime = announcementTime;
		this.content = content;
		this.course = course;
	}





	public Integer getAnnouncementId() {
		return announcementId;
	}





	public void setAnnouncementId(Integer announcementId) {
		this.announcementId = announcementId;
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

	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}




	@Override
	public String toString() {
		return "Announcement [announcementId=" + announcementId + ", announcementTime=" + announcementTime
				+ ", content=" + content + "]";
	}

	




	
}
