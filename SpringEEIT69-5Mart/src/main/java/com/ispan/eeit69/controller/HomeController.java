package com.ispan.eeit69.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.UnitService;
import com.ispan.eeit69.service.VideoService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	CourseService courseService;
	ChapterService chapterService;
	UnitService unitService;
	VideoService videoService;
	IntroductionService introductionService;
	HttpSession session; 
	

	public HomeController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			VideoService videoService, IntroductionService introductionService) {
		super();
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.videoService = videoService;
		this.introductionService = introductionService;
	}

	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "test1";
	}

	@GetMapping("/test2")
	public String test2(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "test2";
	}

	@GetMapping("/test3")
	public String test3(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "test3";
	}
	
	@GetMapping("/test4")
	public String test4(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "test4";
	}

	@GetMapping("/visitorhomepage")
	public String visitorhomepage(Model model) {
		List<Course> allCourse =  courseService.findAll();
		model.addAttribute("allCourse", allCourse );
		return "visitorHomePage";
	}
	
	@GetMapping("/memberHomePage")
	public String memberHomePage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		member member = (member) session.getAttribute("member");
	
		return "memberHomePage";
	}


	@GetMapping("/visitorhomepage2")
	public String visitorhomepage2(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "visitorHomePage2";
	}
	
	@GetMapping("/indextest2")
	public String indextest2(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "indextest2";
	}
	
	@GetMapping("/visitorsearchpage")
	public String visitorsearchpage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "visitorSearchPage";
	}
	
	@GetMapping("/courseDetail")
	public String courseDetail(Model model) {	
		return "courseDetail";
	}
	
	@GetMapping("/evaluate")
	public String evaluate(Model model) {	
		return "evaluate";
	}
	
	@GetMapping("/check")
	public String check(Model model) {	
		return "check";
	}
	@GetMapping("/blogpage")
	public String blogpage(Model model) {
		Introduction introduction= new Introduction();
		introduction = introductionService.findById(4);
		model.addAttribute("introduction",introduction);
		return "blogpage";
	}
}
