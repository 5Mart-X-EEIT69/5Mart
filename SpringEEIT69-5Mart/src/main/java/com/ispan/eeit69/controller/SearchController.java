package com.ispan.eeit69.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.service.CourseService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SearchController {
	
	CourseService courseService;
	HttpSession session;
	
	public SearchController(CourseService courseService, HttpSession session) {
		super();
		this.courseService = courseService;
		this.session = session;
	}


	// 用'類別'搜尋相關課程
	@GetMapping("/searchsort")
	public String searchsort(@RequestParam("sort") String sort, Model model) {
		System.out.println(sort);
		model.addAttribute("keyword", sort);
		List<Course> result = courseService.findBySort(sort);
		model.addAttribute("keywordResult", result);

		return "visitorSearchPage";
	}
	
	// 用'關鍵字'搜尋課程標題
	@PostMapping("/visitorsearchpage")
	public String searchKeyword(@RequestParam("keyword") String keyword, Model model) {
		System.out.println("關鍵字" + keyword);
		model.addAttribute("keyword", keyword);
		List<Course> result = courseService.findByKeyword(keyword);
		model.addAttribute("keywordResult", result);

		return "visitorSearchPage";
	}
	
}
