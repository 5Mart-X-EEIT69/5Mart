package com.ispan.eeit69.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.service.VideoService;

@Controller
public class VideoUploadController {

	//	依賴注入（Dependency Injection）
	//	注解（annotation）

	@Autowired 
	private VideoService videoService;	//	使用自定義 VideoService 來進行各種與影片相關的操作

	//	Spring 自動將路徑映射（mapping）到uploadVideo 方法 Spring MVC 內建功能
	//	@RequestParam("file") MultipartFile file：從 HTTP 請求中獲取名為 "file" 的上傳檔案
    //	Model model：用於將資料傳遞給視圖（view）
	
	@PostMapping("/uploadVideo")
	public String uploadVideo(@RequestParam("file") MultipartFile file, Model model) {
		String message = "";

		
		// 檢查檔案類型
	    String contentType = file.getContentType();
	    if (!"video/mp4".equals(contentType)) {
	        model.addAttribute("message", "檔案類型必須是 MP4");
	        return "/StudentLearningManagementSystem/upload_video";
	    }
	    
	    // 檢查檔案大小
	    long size = file.getSize();
	    if (size > 52428800) {  // 限制為 10MB
	        model.addAttribute("message", "檔案太大，不能超過 50MB");
	        return "/StudentLearningManagementSystem/upload_video";
	    }
		
	    
		//處理邏輯
		
		try {
			// 創建 Video 物件並設定影片資料
			Video video = new Video();
			video.setVideoDataFromMultipartFile(file); // 使用 自定義 Video.java 方法

			// 產生一個唯一的 UUID 並設定到 Video 物件中
			String uniqueID = UUID.randomUUID().toString();
			video.setUuid(uniqueID); // 使用 Video.java 中 uuid 的方法

			// 使用 VideoService 儲存影片資料
			videoService.save(video); // 使用自定義 VideoService 方法
			
			//顯示資訊到前端頁面上
			message = "影片上傳成功！，生成的UUID 是：" + uniqueID;
		} catch (Exception e) {
			message = "影片上傳失敗：" + e.getMessage();
		}
		
		//返回視圖和訊息
		//將處理結果儲存到 Model 中，並導向到 upload_video.jsp 頁面。
		
		model.addAttribute("message", message);

		return "/StudentLearningManagementSystem/upload_video"; // 返回到 upload_video.jsp 頁面
	}
	
	//顯示上傳頁面（GET 方法）
	
	@GetMapping("/uploadVideoPage")
	public String showUploadVideoPage() {
		return "/StudentLearningManagementSystem/upload_video"; // 導引到 upload_video.jsp 頁面
	}
}
