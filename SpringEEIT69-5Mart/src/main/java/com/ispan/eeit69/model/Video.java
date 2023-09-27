package com.ispan.eeit69.model;

import java.sql.Blob;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
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
	
	
	//videoId 作為這個實體的唯一識別符（ID）。@Id 標記它為主鍵，@GeneratedValue 指定自動生成策略。
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer videoId;//影片的唯一碼，數據庫主鍵用於內部操作

	
	private String uuid;  // 對應 UUID 到影片
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "unitId")
	private Unit unit;//對應到的課程ID
	
	private String videoNumber ; //第幾單元的影片
	private String videoName ; //第幾單元的影片
	
	private String videofilePath; // 欄位用於存放檔案路徑


	//videoValue 用於儲存影片的二進位數據，數據類型是 Blob。@Column 定義了相關的數據庫列資訊。
	@Column(columnDefinition = "LONGBLOB") //LONGBLOB最大可以儲存4GB檔案
	private Blob videoData ;//影片二進位數據

	
	public Video() {
	}
	
	//	無參數的建構函數，JPA規範
	public Video(Unit unit, String videoNumber, Blob videoData, String videoName) {
		super();
		this.unit = unit;
		this.videoNumber = videoNumber;
		this.videoData = videoData;
		this.videoName = videoName;
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
	
	//	返回 Blob 類型的 videoData 屬性
	public Blob getVideoBlobData() {
		return videoData;
	}

	public void setVideoData(Blob videoData) {
		this.videoData = videoData;
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


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getVideofilePath() {
		return videofilePath;
	}

	public void setVideofilePath(String videofilePath) {
		this.videofilePath = videofilePath;
	}

	
	// toString() 方法，toString() 方法返回一個包含 Video 對象各個屬性值的字串。除錯和日誌記錄用。
	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", unit=" + unit + ", videoNumber=" + videoNumber + ", uuid=" + uuid + ", videoData="
				+ videoData + ", videoName=" + videoName + "]";
	}
	
	//	將 MultipartFile 轉換成 Blob 格式 並儲存到資料庫
	public void setVideoDataFromMultipartFile(MultipartFile file) throws Exception {
	    Blob blob = new SerialBlob(file.getBytes());
	    this.setVideoData(blob);
	}

	//	將 Blob 轉換為字節數組（byte array）用於提供給前端瀏覽器作為播放用 (似乎是可以選用的功能)
	public byte[] getVideoData() {
        if (this.videoData == null) {	//	檢查 videoData 是否為 null，如果為 null，則方法立即返回 null
            return null;
        }
        try {
            int blobLength = (int) this.videoData.length();	//	獲取 Blob 對象的長度（以字節為單位）
            return this.videoData.getBytes(1, blobLength);  //	調用 Blob 類的 getBytes 方法以獲取整個 Blob 對象的字節數組。從 Blob 中獲取 byte 數組
        } catch (Exception e) {
            e.printStackTrace();  // 顯示錯誤信息。如果在嘗試獲取字節數組的過程中出現任何異常，則該異常會被捕獲，並且方法會返回 null。
            return null;
        }
    }

	
}
