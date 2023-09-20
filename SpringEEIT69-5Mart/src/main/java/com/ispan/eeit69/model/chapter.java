package com.ispan.eeit69.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "chapter_5mart")
public class chapter {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer chapterId;//章節唯一碼
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "courseId")
	private course course;//對應到的課程ID
	
	private String chapterNumber ; //第幾章節
	private String chapterName ;//章節名稱
	
	
	
	
	public chapter() {
	}

	public chapter(Integer chapterId, com.ispan.eeit69.model.course course, String chapterNumber, String chapterName) {
		this.chapterId = chapterId;
		this.course = course;
		this.chapterNumber = chapterNumber;
		this.chapterName = chapterName;
	}
	
	public Integer getChapterId() {
		return chapterId;
	}
	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
	}
	public course getCourse() {
		return course;
	}
	public void setCourse(course course) {
		this.course = course;
	}
	public String getChapterNumber() {
		return chapterNumber;
	}
	public void setChapterNumber(String chapterNumber) {
		this.chapterNumber = chapterNumber;
	}
	public String getChapterName() {
		return chapterName;
	}
	public void setChapterName(String chapterName) {
		this.chapterName = chapterName;
	}

	@Override
	public String toString() {
		return "chapter [chapterId=" + chapterId + ", course=" + course + ", chapterNumber=" + chapterNumber
				+ ", chapterName=" + chapterName + "]";
	}
	
	
}
