package com.ispan.eeit69.controller;

import java.io.IOException;
import java.lang.reflect.Member;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Set;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.AnnouncementService;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.DEV_VideoService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.UnitService;
import com.ispan.eeit69.service.VideoService;
import com.ispan.eeit69.service.memberService;

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
	memberService memberService;
	VideoService videoService;



	public StudentController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			DEV_VideoService devvideoService, IntroductionService introductionService,
			TeacherPictureService teacherPictureService, AnnouncementService announcementService, HttpSession session,
			com.ispan.eeit69.service.memberService memberService, VideoService videoService) {
		super();
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.devvideoService = devvideoService;
		this.introductionService = introductionService;
		this.teacherPictureService = teacherPictureService;
		this.announcementService = announcementService;
		this.session = session;
		this.memberService = memberService;
		this.videoService = videoService;
	}

	// Student LMS Mapping
	
	@GetMapping("/studentIndex")
	public String studentIndex(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			member newMember = memberService.findByMemberId(member.getId());
			System.out.println(newMember.getId());
			Set<Course> buyCourses = newMember.getBuyCourses();
			List<Course> CourseList = new ArrayList<Course>(buyCourses);
			model.addAttribute("CourseList", CourseList);
			return "/StudentLMS/studentIndex";
		} else {
			return "redirect:/homepage";
		}
	}
	
	@GetMapping("/studentCourseList")
	public String studentcourselist(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/CourseService/studentCourseList";
	}
	
	@GetMapping("/studentNotification")
	public String studentNotification(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/NotificationService/studentNotification";
	}
	
	@GetMapping("/studentNotificationQA")
	public String studentNotificationQA(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/NotificationService/studentNotificationQA";
	}
	
	@GetMapping("/studentNotificationMessage")
	public String studentNotificationMessage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/NotificationService/studentNotificationMessage";
	}
	
	@GetMapping("/cartServicePage")
	public String cartServicePage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/StudentLMS/BusinessServices/cartServicePage";
	}


	// 翔哥處理中的部分
	
	@PostMapping("/pictureSettingPage")
	public String pictureUpdateSettingPage(@RequestParam("photo") MultipartFile photo ,Model model,@RequestParam("memberId") Integer memberID) throws IOException, SerialException, SQLException {
		member member = (member) session.getAttribute("member");
		TeacherPicture teacherPicture = teacherPictureService.findByMember(member);
		if(teacherPicture == null) { //沒照片的情況
			byte[] photoBytes = photo.getBytes();
			Blob blob = new SerialBlob(photoBytes); //處理圖片
			member member1 = memberService.findByMemberId(memberID);
			TeacherPicture teacherPicture1 = new TeacherPicture(blob,member1);
			teacherPictureService.save(teacherPicture1);		
			// 将Blob数据转换为Base64编码的字符串
			byte[] imageBytes = teacherPicture1.getPhoto().getBytes(1, (int) teacherPicture1.getPhoto().length());
			String base64Image = Base64.getEncoder().encodeToString(imageBytes);
			
			model.addAttribute("base64Image",base64Image);
			session.setAttribute("base64Image", base64Image);
		}else {   //有照片的情況
			byte[] newPhotoBytes = photo.getBytes();
		    Blob newBlob = new SerialBlob(newPhotoBytes);
		    teacherPicture.setPhoto(newBlob);
		    
		    teacherPictureService.update(teacherPicture);
		    
		    TeacherPicture findpicture = new TeacherPicture();
		    findpicture = memberService.findByMemberId(memberID).getTeacherPicture();
		    
		    if (findpicture != null) {
		    	// 将Blob数据转换为Base64编码的字符串
		    	byte[] imageBytes = findpicture.getPhoto().getBytes(1, (int) findpicture.getPhoto().length());
		    	String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		    	
		    	model.addAttribute("base64Image",base64Image);
		    	session.setAttribute("base64Image", base64Image);
		}
		
		}
		return "/StudentLMS/SettingsService/pictureSettingPage";
	}

		
	@GetMapping("/profileSettingPage")
 	public String profileSettingPage(Model model) {
		member member = (member) session.getAttribute("member");
		
		
		if (member != null) {
			System.out.println("profileSettingPage");
		
			member newMember = memberService.findByMemberId(member.getId()); //先抓到ID
			Introduction introduction = newMember.getIntroduction();
			model.addAttribute("introduction",introduction);
			
			member memberUpdate = memberService.findByMemberId(member.getId());
			model.addAttribute("member", memberUpdate);
			
			
			
			return "/StudentLMS/SettingsService/profileSettingPage";   
		} else {
			System.out.println("HOMEPAGE");
			return "redirect:/homepage";
		}
//		return null;
	}


	@GetMapping("/pictureSettingPage")
	public String pictureSettingPage(Model model) {
		member member = (member) session.getAttribute("member");
		if(member != null) {
			TeacherPicture teacherPicture = teacherPictureService.findByMember(member);
			
			if (teacherPicture != null) {
			// 将Blob数据转换为Base64编码的字符串
			
			byte[] imageBytes;
			try {
				imageBytes = teacherPicture.getPhoto().getBytes(1, (int) teacherPicture.getPhoto().length());
				String base64Image = Base64.getEncoder().encodeToString(imageBytes);
				model.addAttribute("base64Image",base64Image);
				session.setAttribute("base64Image", base64Image);
			} catch (SQLException e) {
				System.out.println(e);
				e.printStackTrace();
			}
			
			}
			return "/StudentLMS/SettingsService/pictureSettingPage";		
		}else {
			return "redirect:/homepage";
		}

	}
	
	// 跳轉至講師資料照片頁面
	
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
		member member = (member) session.getAttribute("member");
		if (member != null) {
			System.out.println("profileSettingPage");
		return "/StudentLMS/SettingsService/safetySettingPage";
		} else {
			System.out.println("HOMEPAGE");
			return "redirect:/homepage";
	}
	}
	
	//開發用的方法

	@GetMapping("/coursePlayerPage")
	public String coursePlayerPage(@RequestParam("id") String id, Model model) {
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		TeacherPicture teacherPicture =course.getTeacher().getTeacherPicture();
		if (teacherPicture != null) {
		// 将Blob数据转换为Base64编码的字符串
		
		byte[] imageBytes;
		try {
			imageBytes = teacherPicture.getPhoto().getBytes(1, (int) teacherPicture.getPhoto().length());
			String base64Image = Base64.getEncoder().encodeToString(imageBytes);
			model.addAttribute("base64Image",base64Image);
			session.setAttribute("base64Image", base64Image);
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		}
		model.addAttribute("courseData",course);
		return "/StudentLMS/CourseService/coursePlayerPage";
	}
	
	@GetMapping("/api/videos/{uuid}")
	public ResponseEntity<byte[]> getVideoByUUID(@PathVariable String uuid) {
		System.out.println("Received UUID: " + uuid); // 顯示接收到的UUID
		try {
			Video video = videoService.findByUuid(uuid); // 從資料庫中獲取影片
			if (video != null) {
				byte[] videoData = video.getVideoData().getBytes(1, (int)video.getVideoData().length()); // 在 Video.java 中定義的方法

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

	// 開發測試用區域
	
	@GetMapping("/Player")
	public String Player(Model model) {
		return "/StudentLMS/DevelopmentFolder/Player";
	}


	
	// 10.03 Test
	
	 @PostMapping("/profileSettingPage")
	 public String introduction(@RequestParam("memberId") Integer memberID,@RequestParam("realName") String realName, 
			 @RequestParam("language") String language, @RequestParam("introductionText") String introductionText, @RequestParam("userName") String userName) {
		 System.out.println("TESTSETTING");
		 member member = memberService.findByMemberId(memberID); //找出當前登入會員資料
		 
		 if(userName == member.getUsername()) {
			 System.out.println("沒有任何修改");
		 }else if(userName != member.getUsername()) {
			 member.setUsername(userName);
		 }
		 if(member.getLanguage()== null) {
			 member.setLanguage(language);
		 }else if(member.getLanguage()!= language) {
			 member.setLanguage(language);
		 }else if(member.getLanguage()== language) {
			 System.out.println("沒有任何修改");
		 }
		 
		 if(member.getRealName()== null) {
			 member.setRealName(realName);
		 }else if(member.getRealName()!= realName) {
			 member.setRealName(realName);
		 }else if(member.getRealName()== realName) {
			 System.out.println("沒有任何修改");
		 }
		 
		 Introduction introduction = member.getIntroduction(); //為null
		 System.out.println("introduction:"+introduction);
		 if(introduction == null) {
			 Introduction newIntroduction = new Introduction();
			 newIntroduction.setMember(member);

			 newIntroduction.setIntroductionText(introductionText);
			 introductionService.save(newIntroduction);
			 
		 }else if(introduction.getIntroductionText()!=introductionText) {
			 introduction.setIntroductionText(introductionText);
			 introductionService.update(introduction);
			 
		 }else if(introduction.getIntroductionText()== introductionText) {
		 
		 }
		 

		 
		 memberService.save(member); //未完成introduction
		 
		 
		 System.out.println(memberID);//ok
		 System.out.println(realName);
		 System.out.println(language);
		 System.out.println(introductionText);
		 System.out.println(userName);//ok
		 

        
        return "redirect:profileSettingPage" ; // 重定向到用戶資料顯示頁面
    }
	
	
	
}
	
	


