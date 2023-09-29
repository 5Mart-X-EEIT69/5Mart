package com.ispan.eeit69.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.TeacherPictureService;
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
	TeacherPictureService teacherPictureService;
	HttpSession session;



	public HomeController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			VideoService videoService, IntroductionService introductionService,
			TeacherPictureService teacherPictureService, HttpSession session) {
		super();
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.videoService = videoService;
		this.introductionService = introductionService;
		this.teacherPictureService = teacherPictureService;
		this.session = session;
	}

	@GetMapping("/test1")
	public String home(Model model) {
		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
		return "test1";
	}

//	@GetMapping("/visitorhomepage")
//	public String visitorhomepage(Model model) {
//		List<Course> allCourse = courseService.findAll();
//		model.addAttribute("allCourse", allCourse);
//		member member = (member) session.getAttribute("member");
//		if (member == null) {
//			return "visitorHomePage";
//		} else {
//			return "memberHomePage";
//		}
//	}
	
	@GetMapping("/homepage")
	public String homepage(Model model) {
		List<Course> allCourse = courseService.findAll();
		model.addAttribute("allCourse", allCourse);
		session.setAttribute("allCourse", allCourse);
		return "homePage";
	}

//	@GetMapping("/memberHomePage")
//	public String memberHomePage(Model model) {
//		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
//		member member = (member) session.getAttribute("member");
//
//		return "memberHomePage";
//	}

//	@GetMapping("/visitorsearchpage")
//	public String visitorsearchpage(Model model) {
//		model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
//		return "visitorSearchPage";
//	}

	@PostMapping("/visitorsearchpage")
	public String searchKeyword(@RequestParam("keyword") String keyword, Model model) {
		System.out.println("關鍵字" + keyword);
		model.addAttribute("keyword", keyword);
		List<Course> result = courseService.findByKeyword(keyword);
		model.addAttribute("keywordResult", result);

		return "visitorSearchPage";
	}

	@GetMapping("/courseDetail")
	public String courseDetail(@RequestParam("id") String id, Model model) {
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		model.addAttribute("courseData",course);
		Chapter chapter = chapterService.findById(intId);
		model.addAttribute("chapter",chapter);
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
		Introduction introduction = new Introduction();
		introduction = introductionService.findById(4);
		model.addAttribute("introduction", introduction);
		return "blogpage";

	}

	@GetMapping("/teacherNavBar")
	public String teacherNavBar(Model model) {
		return "teacherNavBar";
	}
	
	@GetMapping("/searchsort")
	public String searchsort(@RequestParam("sort") String sort, Model model) {
		System.out.println(sort);
		model.addAttribute("keyword",sort);
		List<Course> result = courseService.findBySort(sort);
		model.addAttribute("keywordResult",result);
		
		return "visitorSearchPage";
	}

}
