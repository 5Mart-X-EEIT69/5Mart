package com.ispan.eeit69.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("welcome","歡迎來到Spring Boot的世界");
		return "test1";
	}
	
	@GetMapping("/test2")
	public String test2(Model model) {
		model.addAttribute("welcome","歡迎來到Spring Boot的世界");
		return "test2";
	}
	
	@GetMapping("/test3")
	public String test3(Model model) {
		model.addAttribute("welcome","歡迎來到Spring Boot的世界");
		return "test3";
	}
	
	@GetMapping("/teacher")
	public String teacher(Model model) {	
		return "TeacherMain";
	}
}
