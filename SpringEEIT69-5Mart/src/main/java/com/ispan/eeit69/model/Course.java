package com.ispan.eeit69.model;

import java.io.Serializable;
import java.sql.Clob;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;




import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "course_5mart")
public class Course implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String title;
	private String introduction;
	private Clob photo;
	private Integer price;
	private String level;
	private String sort;
	private Timestamp registerTime;
	
	@OneToMany(mappedBy = "course")
	private Set<Chapter> chapter = new LinkedHashSet<Chapter>();
		
	public Course() {
	}

	public Course(Integer id, String title, String introduction, Clob photo, Integer price, String level, String sort) {
		this.id = id;
		this.title = title;
		this.introduction = introduction;
		this.photo = photo;
		this.price = price;
		this.level = level;
		this.sort = sort;
	}
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Clob getPhoto() {
		return photo;
	}
	public void setPhoto(Clob photo) {
		this.photo = photo;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	
	
	public Timestamp getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}
	
	

	public Set<Chapter> getChapter() {
		return chapter;
	}

	public void setChapter(Set<Chapter> chapter) {
		this.chapter = chapter;
	}

	@Override
	public String toString() {
		return "course [id=" + id + ", title=" + title + ", introduction=" + introduction + ", photo=" + photo
				+ ", price=" + price + ", level=" + level + ", sort=" + sort + "]";
	}
	
	
}
