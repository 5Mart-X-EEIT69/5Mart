package com.ispan.eeit69.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.DEV_Video;
import com.ispan.eeit69.service.AnnouncementService;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.DEV_VideoService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.UnitService;

import jakarta.servlet.http.HttpSession;


@Controller
public class StudentController {

	CourseService courseService;
	ChapterService chapterService;
	UnitService unitService;
	DEV_VideoService devvideoService;
	IntroductionService introductionService;
	TeacherPictureService teacherPictureService;
	AnnouncementService announcementService;
	HttpSession session;

	public StudentController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			DEV_VideoService devvideoService, IntroductionService introductionService) {
		super();
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.devvideoService = devvideoService;
		this.introductionService = introductionService;
	}

	// Student LMS Mapping
	
	@GetMapping("/studentIndex")
	public String studentIndex(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/studentIndex";
	}
	
	@GetMapping("/cartServicePage")
	public String cartServicePage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/BusinessServices/cartServicePage";
	}
	
	@GetMapping("/profileSettingPage")
	public String profileSettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/profileSettingPage";
	}
	
	@GetMapping("/pictureSettingPage")
	public String pictureSettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "pictureSettingPage";
	}
//	@GetMapping("/pictureSettingPage")
//	public String pictureSettingPage(Model model) {
//		member member = (member) session.getAttribute("member");
//		if(member != null) {
//			TeacherPicture studentPicture = TeacherPictureService.findByMember(member);
//			
//			if (studentPicture != null) {
//			// 将Blob数据转换为Base64编码的字符串
//			
//			byte[] imageBytes;
//			try {
//				imageBytes = studentPicture.getPhoto().getBytes(1, (int) studentPicture.getPhoto().length());
//				String base64Image = Base64.getEncoder().encodeToString(imageBytes);
//				model.addAttribute("base64Image",base64Image);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//			}
//			return "/pictureSettingPage";		
//		}else {
//			return "redirect:/visitorhomepage";
//		}
//
//	}// 跳轉至講師資料照片頁面
	@GetMapping("/deactivateSettingPage")
	public String deactivateSettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/deactivateSettingPage";
	}
	@GetMapping("/paymentSettingPage")
	public String paymentSettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/paymentSettingPage";
	}
	@GetMapping("/privacySettingPage")
	public String privacySettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/privacySettingPage";
	}
	@GetMapping("/subscriptionSettingPage")
	public String subscriptionSettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/subscriptionSettingPage";
	}
	@GetMapping("/safetySettingPage")
	public String safetySettingPage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/SettingsService/safetySettingPage";
	}

	@GetMapping("/student_dashboard")
	public String student_dashboard(Model model) {
		return "/StudentLMS/student_dashboard";
	}
	
	@GetMapping("/student_course_viewer")
	public String student_course_viewer(Model model) {
		return "/StudentLMS/student_course_viewer";
	}

	@GetMapping("/coursePlayerPage")
	public String coursePlayerPage(@RequestParam("id") String id, Model model) {
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		model.addAttribute("courseData",course);
		Chapter chapter = chapterService.findById(intId);
		model.addAttribute("chapter",chapter);
		return "/StudentLMS/CourseService/coursePlayerPage";
	}
	
	@GetMapping("/Player")
	public String Player(Model model) {
		return "/StudentLMS/DevelopmentFolder/Player";
	}

	@GetMapping("/api/videos/{uuid}")
	public ResponseEntity<byte[]> getVideoByUUID(@PathVariable String uuid) {
		System.out.println("Received UUID: " + uuid); // 顯示接收到的UUID
		try {
			DEV_Video video = devvideoService.findByUuid(uuid); // 從資料庫中獲取影片
			if (video != null) {
				byte[] videoData = video.getVideoData(); // 在 Video.java 中定義的方法

				HttpHeaders headers = new HttpHeaders();
				headers.setContentType(MediaType.valueOf("video/mp4")); // 設置正確的 MIME 類型
				System.out.println("ok");
                return new ResponseEntity<>(videoData, headers, HttpStatus.OK);
			} else {
				System.out.println("error");
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
