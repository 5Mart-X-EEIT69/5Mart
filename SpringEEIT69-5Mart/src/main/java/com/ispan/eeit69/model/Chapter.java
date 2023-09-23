package com.ispan.eeit69.model;

import java.util.LinkedHashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;

@Entity
@Table(name = "chapter_5mart")
public class Chapter {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer chapterId;//章節唯一碼
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "courseId")
	private Course course;//對應到的課程ID
	
	private String chapterNumber ; //第幾章節
	private String chapterName ;//章節名稱
	
	@OneToMany(mappedBy = "chapter")
	@OrderBy("unitNumber")
	private Set<Unit> unit = new LinkedHashSet<Unit>();
	
	
	
	public Chapter() {
	}
	
	public Chapter(Integer chapterId, Course course, String chapterNumber, String chapterName, Set<Unit> unit) {
		this.chapterId = chapterId;
		this.chapterNumber = chapterNumber;
		this.chapterName = chapterName;
	}



	public Integer getChapterId() {
		return chapterId;
	}
	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
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

	public Set<Unit> getUnit() {
		return unit;
	}

	public void setUnit(Set<Unit> unit) {
		this.unit = unit;
	}

	@Override
	public String toString() {
		return "chapter [chapterId=" + chapterId + ", course=" + course + ", chapterNumber=" + chapterNumber
				+ ", chapterName=" + chapterName + "]";
	}
	
	
}
