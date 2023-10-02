package com.ispan.eeit69.model;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.Base64;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Article_5mart") // 在資料庫的table名稱
public class Article {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String articleTitle;
	
	@Lob
	@Column(columnDefinition = "TEXT")
	private String articleContent;
	private Timestamp postTime;
	private Blob photo;
	
	@ManyToOne()
	@JoinColumn(name = "teacher_id")
	private member teacher ;
	
	public Article() {
	}

	public Article(Integer id, String articleTitle, String articleContent, Timestamp postTime, Blob photo) {
		this.id = id;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.postTime = postTime;
		this.photo = photo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public Timestamp getPostTime() {
		return postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

	public Blob getPhoto() {
		return photo;
	}

	public void setPhoto(Blob photo) {
		this.photo = photo;
	}	

	public member getTeacher() {
		return teacher;
	}

	public void setTeacher(member teacher) {
		this.teacher = teacher;
	}
	
	public String getDataUri() throws Exception {
		if(photo!=null) {
			byte[] photoByte = photo.getBytes(1, (int)photo.length());
			String base64Photo = Base64.getEncoder().encodeToString(photoByte);			
			return base64Photo;
		}else {
			return null;
		}
		
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", articleTitle=" + articleTitle + ", articleContent=" + articleContent
				+ ", postTime=" + postTime + ", photo=" + photo + "]";
	}
	
	
	
	
}
