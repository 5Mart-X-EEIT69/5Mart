package com.ispan.eeit69.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

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
	

	@GetMapping("/evaluate")
	public String evaluate(Model model) {	
		return "evaluate";
	}
	
	@GetMapping("/check")
	public String check(Model model) {	
		return "check";
	}
	@GetMapping("/teacher")
	public String teacher(Model model) {
		return "TeacherMain";	

	}
	
	@GetMapping("/visitorhomepage")
	public String visitorhomepage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "visitorHomePage";
	}
	
	@GetMapping("/memberHomePage")
	public String memberHomePage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "memberHomePage";
	}
	
	@GetMapping("/visitorsearchpage")
	public String visitorsearchpage(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "visitorSearchPage";
	}
	
	@GetMapping("/student_dashboard")
	public String student_dashboard(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/student_lms/student_dashboard";
	}
	
	@GetMapping("/student_course_viewer")
	public String student_course_viewer(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "/student_lms/student_course_viewer";
	}

	@GetMapping("/courseDetail")
	public String courseDetail(Model model) {	
		return "courseDetail";
	}
}
