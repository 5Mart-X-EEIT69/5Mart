package com.ispan.eeit69.model;

import java.io.Serializable;
import java.sql.Clob;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ispan.eeit69.utils.SystemService;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.OrderBy;
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
	@JsonIgnore
	private Clob photo;
	private Integer price;
	private String level;
	private String sort;
	private Timestamp registerTime;
	
	@OneToOne(mappedBy = "course", cascade = CascadeType.ALL)
    private Announcement announcement;
	
	
	@OneToMany(mappedBy = "course" ,cascade = CascadeType.ALL)
	@OrderBy("chapterNumber")
	private Set<Chapter> chapter = new LinkedHashSet<Chapter>();
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "member_course_5mart",
    joinColumns = {
    		@JoinColumn(name = "course_id", referencedColumnName = "id")
    },
    inverseJoinColumns = {
    		@JoinColumn(name = "member_id", referencedColumnName = "id")
    }
	)
	private Set<member> buyByMember = new LinkedHashSet<member>();
	
	@ManyToOne()
	@JoinColumn(name = "teacher_id")
	private member teacher ;
	
	public Course() {
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

	public String getDataUri() throws Exception {
		return SystemService.clobToString(photo);
	}

	public Set<member> getBuyByMember() {
		return buyByMember;
	}

	public void setBuyByMember(Set<member> buyByMember) {
		this.buyByMember = buyByMember;
	}

	public member getTeacher() {
		return teacher;
	}

	public void setTeacher(member teacher) {
		this.teacher = teacher;
	}

	public Announcement getAnnouncement() {
		return announcement;
	}



	public void setAnnouncement(Announcement announcement) {
		this.announcement = announcement;
	}







	@Override
	public String toString() {
		return "Course [id=" + id + ", title=" + title + ", introduction=" + introduction + ", photo=" + photo
				+ ", price=" + price + ", level=" + level + ", sort=" + sort + ", registerTime=" + registerTime
				+ ", announcement=" + announcement + ", chapter=" + chapter + ", buyByMember=" + buyByMember
				+ ", teacher=" + teacher + "]";
	}




	

	
	
}
