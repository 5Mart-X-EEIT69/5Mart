package com.ispan.eeit69.controller;

import java.sql.Clob;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.sql.rowset.serial.SerialClob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.ispan.eeit69.model.course;
import com.ispan.eeit69.service.courseService;

@Controller
public class TeacherController {

	courseService courseservice ;
//	課程
	
	public TeacherController(courseService courseservice) {
		this.courseservice = courseservice;
	}
	
	
	@GetMapping("/TeacherMain")
	public String teacher(Model model) {	
		return "TeacherMain";
	}//跳轉至講師主頁面
	

	@GetMapping("/TeacherCreate")
	public String teacherCreate(Model model) {	
		return "/TeacherCourse/TeacherCreateCourses";
	}//跳轉至建立課程頁面
	
	@GetMapping("/TeacherCreateFundraisingCourses")
	public String TeacherCreateFundraisingCourses(Model model) {	
		return "/TeacherCourse/TeacherCreateFundraisingCourses";
	}//跳轉至建立募資課程頁面
	
	@GetMapping("/TeacherCreateArticle")
	public String TeacherCreateArticle(Model model) {	
		return "/TeacherCourse/TeacherCreateArticle";
	}//跳轉至建立文章頁面
	
	@GetMapping("/TeacherCourseList")
	public String TeacherCourseList(Model model) {	
		return "/TeacherCourse/TeacherCourseList";
	}//跳轉至課程清單頁面
	
//	講師交流
	
	@GetMapping("/TeacherComminicate")
	public String TeacherComminicate(Model model) {	
		return "/TeacherComminicate/TeacherComminicate";
	}//跳轉至講師交流頁面	
	
	@GetMapping("/TeacherComminicateQA")
	public String TeacherComminicateQA(Model model) {	
		return "/TeacherComminicate/TeacherComminicateQA";
	}//跳轉至講師交流問與答頁面
	
	@GetMapping("/TeacherComminicateMessage")
	public String TeacherComminicateMessage(Model model) {	
		return "/TeacherComminicate/TeacherComminicateMessage";
	}//跳轉至講師交流私人訊息頁面
	
	@GetMapping("/TeacherComminicateTask")
	public String TeacherComminicateTask(Model model) {	
		return "/TeacherComminicate/TeacherComminicateTask";
	}//跳轉至講師交流作業頁面
	
	@GetMapping("/TeacherComminicateAnnouncement")
	public String TeacherComminicateAnnouncement(Model model) {	
		return "/TeacherComminicate/TeacherComminicateAnnouncement";
	}//跳轉至講師交流公告頁面
	
//	儀表板
	
	@GetMapping("/TeacherDashboard")
	public String TeacherDashboard(Model model) {	
		return "/TeacherDashboard/TeacherDashboard";
	}//跳轉至儀錶板頁面
	
	@GetMapping("/TeacherDashboardRevenue")
	public String TeacherDashboardRevenue(Model model) {	
		return "/TeacherDashboard/TeacherDashboardRevenue";
	}//跳轉至儀錶板營收頁面
	
	@GetMapping("/TeacherDashboardTraffic")
	public String TeacherDashboardTraffic(Model model) {	
		return "/TeacherDashboard/TeacherDashboardTraffic";
	}//跳轉至儀表板流量頁面
	
	@GetMapping("/TeacherDashboardWatched")
	public String TeacherDashboardWatched(Model model) {	
		return "/TeacherDashboard/TeacherDashboardWatched";
	}//跳轉至儀表板觀看時數頁面
	
	@GetMapping("/TeacherDashboardStudent")
	public String TeacherDashboardStudent(Model model) {	
		return "/TeacherDashboard/TeacherDashboardStudent";
	}//跳轉至儀表板學生頁面
	
//	講師資料 
	
	@GetMapping("/TeacherInformation")
	public String TeacherInformation(Model model) {	
		return "/TeacherInformation/TeacherInformation";
	}//跳轉至講師資料頁面
	
	@GetMapping("/TeacherInformationPhoto")
	public String TeacherInformationPhoto(Model model) {	
		return "/TeacherInformation/TeacherInformationPhoto";
	}//跳轉至講師資料照片頁面
	
	@GetMapping("/TeacherInformationIntroduction")
	public String TeacherInformationIntroduction(Model model) {	
		return "/TeacherInformation/TeacherInformationIntroduction";
	}//跳轉至講師資料自我介紹頁面
	
	@GetMapping("/TeacherInformationAbility")
	public String TeacherInformationAbility(Model model) {	
		return "/TeacherInformation/TeacherInformationAbility";
	}//跳轉至講師資料能力證明頁面

	@GetMapping("/TeacherInformationAccount")
	public String TeacherInformationAccount(Model model) {	
		return "/TeacherInformation/TeacherInformationAccount";
	}//跳轉至講師資料帳戶頁面

	@GetMapping("/bsjsTest")
	public String bsjsTest(Model model) {	
		return "/bsjsTest";
	}//跳轉至講師資料帳戶頁面
	
	@PostMapping("/submitCourse")
	public String createCourses(@RequestBody JsonNode formData , Model model ,@ModelAttribute("preCourse") course course) throws SerialException,SQLException {
		
		course.setTitle(formData.get("title").asText());
//		System.out.println(formData.get("title").asText());
//		System.out.println("------");
		course.setIntroduction(formData.get("introduction").asText());
//		System.out.println(formData.get("introduction").asText());
//		System.out.println("------");
		char[] c = formData.get("photo").asText().toCharArray();
		Clob clob = new SerialClob(c);
		course.setPhoto(clob);
//		System.out.println(formData.get("photo").asText());
//		System.out.println("------");
		course.setPrice(formData.get("price").asInt());
//		System.out.println(formData.get("price").asInt());
//		System.out.println("------");
//		JsonNode courseArray = formData.get("course");
//		for(JsonNode courseobj : courseArray) {
//			courseobj.fields().forEachRemaining(entry ->{
//				String attributeName = entry.getKey();
//				JsonNode attributeValue = entry.getValue();
//				System.out.println(attributeName + ": " + attributeValue.asText());
//			});
//			System.out.println("run");
//		}
//		System.out.println("------");
//		JsonNode videoArray = formData.get("video");
//		for(JsonNode videoobj : videoArray) {
//			videoobj.fields().forEachRemaining(entry ->{
//				String attributeName = entry.getKey();
//				JsonNode attributeValue = entry.getValue();
//				System.out.println(attributeName + ": " + attributeValue.asText());
//			});
//			System.out.println("run");
//		}
//		System.out.println("------");
		course.setLevel(formData.get("level").asText());
//		System.out.println(formData.get("level").asText());
//		System.out.println("------");
		course.setSort(formData.get("sort").asText());
//		System.out.println(formData.get("sort").asText());
//		System.out.println("------");
		courseservice.save(course);
		return "/TeacherCourse/TeacherCourseList";
	}
	
	@ModelAttribute("preCourse")
	public course beforeSave() {
		course course = new course();
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		course.setRegisterTime(ts);
		return course;
	}
}


