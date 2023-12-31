package com.ispan.eeit69.model;

import java.sql.Blob;

import com.ispan.eeit69.utils.SystemService;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="TeacherPicture_5Mart")
public class TeacherPicture {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer TeacherPictureId;
	
	private Blob photo;
	
    @OneToOne()
    @JoinColumn(name = "member_id")
    private member member;

	
	
	public TeacherPicture() {
	}



	public TeacherPicture(Blob photo, member member) {
		this.photo = photo;
		this.member = member;
	}



	public Integer getTeacherPictureId() {
		return TeacherPictureId;
	}

	public void setTeacherPictureId(Integer teacherPictureId) {
		TeacherPictureId = teacherPictureId;
	}

	public Blob getPhoto() {
		return photo;
	}

	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	
//	public String getDataUri() throws Exception {
//		return photo.;
//	}

	@Override
	public String toString() {
		return "TeacherPicture [TeacherPictureId=" + TeacherPictureId + ", photo=" + photo + "]";
	}
	
	
	
}
