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
import jakarta.persistence.Table;

@Entity
@Table(name = "unit_5mart")
public class Unit {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer unitId;//單元唯一碼
	
	@ManyToOne()
	@JoinColumn(name = "chapterId")
	private Chapter chapter;//對應到的課程ID
	
	private String unitNumber ; //第幾單元
	private String unitName ;//單元名稱
	
	@OneToMany(mappedBy = "unit" ,cascade = CascadeType.ALL)
	private Set<Video> video = new LinkedHashSet<Video>();
	
	public Unit() {
	}
	
	

	public Unit(Chapter chapter, String unitNumber, String unitName) {
		this.chapter = chapter;
		this.unitNumber = unitNumber;
		this.unitName = unitName;
	}



	public Integer getUnitId() {
		return unitId;
	}

	public void setUnitId(Integer unitId) {
		this.unitId = unitId;
	}

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public String getUnitNumber() {
		return unitNumber;
	}

	public void setUnitNumber(String unitNumber) {
		this.unitNumber = unitNumber;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}	
	
	public Set<Video> getVideo() {
		return video;
	}

	public void setVideo(Set<Video> video) {
		this.video = video;
	}



	@Override
	public String toString() {
		return "Unit [unitId=" + unitId + ", chapter=" + chapter + ", unitNumber=" + unitNumber + ", unitName="
				+ unitName + "]";
	}
	

	
	
}
