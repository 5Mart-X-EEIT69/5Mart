package com.ispan.eeit69.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "video_5mart")
public class Video {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer videoId;//單元唯一碼
	
	@OneToOne()
	@JoinColumn(name = "unitId")
	private Unit unit;//對應到的課程ID
	
	private String videoNumber ; //第幾單元的影片
//	private Clob videoValue ;//影片base64
	private String videoName ; //影片名稱
	
	private String uuid;  // 對應 UUID 到影片
	
	//videoValue 用於儲存影片的二進位數據，數據類型是 Blob。@Column 定義了相關的數據庫列資訊。
	@Column(columnDefinition = "LONGBLOB") //LONGBLOB最大可以儲存4GB檔案
	private Blob videoData ;//影片二進位數據
	
	public Video() {
	}

	public Video(Unit unit, String videoNumber, String videoName, String uuid, Blob videoData) {
		this.unit = unit;
		this.videoNumber = videoNumber;
		this.videoName = videoName;
		this.uuid = uuid;
		this.videoData = videoData;
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


	
	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	
	

	public String getUuid() {
		return uuid;
	}


	public void setUuid(String uuid) {
		this.uuid = uuid;
	}


	public Blob getVideoData() {
		return videoData;
	}


	public void setVideoData(Blob videoData) {
		this.videoData = videoData;
	}

	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", unit=" + unit + ", videoNumber=" + videoNumber + ", videoName="
				+ videoName + ", uuid=" + uuid + "]";
	}










	
	
}
