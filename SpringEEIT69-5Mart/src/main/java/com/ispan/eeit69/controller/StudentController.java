// package com.ispan.eeit69.controller;

// import org.springframework.http.HttpHeaders;
// import org.springframework.http.HttpStatus;
// import org.springframework.http.MediaType;
// import org.springframework.http.ResponseEntity;
// import org.springframework.stereotype.Controller;
// import org.springframework.ui.Model;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;

// import com.ispan.eeit69.model.Video;
// import com.ispan.eeit69.service.AnnouncementService;
// import com.ispan.eeit69.service.ChapterService;
// import com.ispan.eeit69.service.CourseService;
// import com.ispan.eeit69.service.IntroductionService;
// import com.ispan.eeit69.service.TeacherPictureService;
// import com.ispan.eeit69.service.UnitService;
// import com.ispan.eeit69.service.VideoService;

// import jakarta.servlet.http.HttpSession;

// @Controller
// public class StudentController {

// 	CourseService courseService;
// 	ChapterService chapterService;
// 	UnitService unitService;
// 	VideoService videoService;
// 	IntroductionService introductionService;
// 	TeacherPictureService teacherPictureService;
// 	AnnouncementService announcementService;
// 	HttpSession session;

// 	public StudentController(CourseService courseService, ChapterService chapterService, UnitService unitService,
// 			VideoService videoService, IntroductionService introductionService) {
// 		super();
// 		this.courseService = courseService;
// 		this.chapterService = chapterService;
// 		this.unitService = unitService;
// 		this.videoService = videoService;
// 		this.introductionService = introductionService;
// 	}

// 	// Student LMS Mapping
// 	@GetMapping("/studentsettings")
// 	public String home(Model model) {
// 		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
// 		return "/StudentLearningManagementSystem/StudentAccountSettings";
// 	}

// 	@GetMapping("/student_dashboard")
// 	public String student_dashboard(Model model) {
// 		return "/StudentLearningManagementSystem/student_dashboard";
// 	}

// 	@GetMapping("/student_course_viewer")
// 	public String student_course_viewer(Model model) {
// 		return "/StudentLearningManagementSystem/student_course_viewer";
// 	}

// 	@GetMapping("/Course_Player")
// 	public String Course_Player(Model model) {
// 		return "/StudentLearningManagementSystem/Course_Player";
// 	}
	
// 	@GetMapping("/Player")
// 	public String Player(Model model) {
// 		return "/StudentLearningManagementSystem/Player";
// 	}

// 	@GetMapping("/api/videos/{uuid}")
// 	public ResponseEntity<byte[]> getVideoByUUID(@PathVariable String uuid) {
// 		System.out.println("Received UUID: " + uuid); // 顯示接收到的UUID
// 		try {
// 			Video video = videoService.findByUuid(uuid); // 從資料庫中獲取影片
// 			if (video != null) {
// 				byte[] videoData = video.getVideoData(); // 在 Video.java 中定義的方法

// 				HttpHeaders headers = new HttpHeaders();
// 				headers.setContentType(MediaType.valueOf("video/mp4")); // 設置正確的 MIME 類型
// 				System.out.println("ok");
//                 return new ResponseEntity<>(videoData, headers, HttpStatus.OK);
// 			} else {
// 				System.out.println("error");
// 				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
// 			}
// 		} catch (Exception e) {
// 			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
// 		}
// 	}
// }
