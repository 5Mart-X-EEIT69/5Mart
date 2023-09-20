package com.ispan.eeit69.model;

import java.sql.Clob;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "video_5mart")
public class Video {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer videoId;//單元唯一碼
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "unitId")
	private Unit unit;//對應到的課程ID
	
	private String videoNumber ; //第幾單元的影片
	private Clob videoValue ;//影片base64
	
	public Video() {
	}
	
	public Video(Unit unit, String videoNumber, Clob videoValue) {
		this.unit = unit;
		this.videoNumber = videoNumber;
		this.videoValue = videoValue;
	}

	public Integer getVideoId() {
		return videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}

	public Unit getUnit() {
		return unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}

	public String getVideoNumber() {
		return videoNumber;
	}

	public void setVideoNumber(String videoNumber) {
		this.videoNumber = videoNumber;
	}

	public Clob getVideoValue() {
		return videoValue;
	}

	public void setVideoValue(Clob videoValue) {
		this.videoValue = videoValue;
	}

	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", unit=" + unit + ", videoNumber=" + videoNumber + ", videoValue="
				+ videoValue + "]";
	}


	
	
}
