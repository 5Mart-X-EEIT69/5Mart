package com.ispan.eeit69.model;

import java.sql.Clob;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

public class Video {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer videoId;//單元唯一碼

	@ManyToOne()
	@JoinColumn(name = "unitId")
	private Unit unit;//對應到的課程ID

	private String videoNumber ; //第幾單元的影片
	private Clob videoValue ;//影片base64
	private String videoName ; //第幾單元的影片

	public Video() {
	}


	public Video(Unit unit, String videoNumber, Clob videoValue, String videoName) {
		super();
		this.unit = unit;
		this.videoNumber = videoNumber;
		this.videoValue = videoValue;
		this.videoName = videoName;
	}

	public Integer getVideoId() {
		return videoId;
	}
  public String getVideoNumber() {
	public void setVideoNumber(String videoNumber) {
		this.videoNumber = videoNumber;
	}

	public Clob getVideoValue() {
		return videoValue;
	}

	public void setVideoValue(Clob videoValue) {
		this.videoValue = videoValue;
	}


  public String getVideoName() {
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", unit=" + unit + ", videoNumber=" + videoNumber + ", videoValue="
				+ videoValue + ", videoName=" + videoName + "]";
	}
  
}
