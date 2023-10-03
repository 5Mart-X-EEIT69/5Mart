package com.ispan.eeit69.controller;

import java.sql.Timestamp;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.StudentQuestionService;
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
	@Autowired
	StudentQuestionService studentQuestionService;



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

	

	@GetMapping("/courseDetail")
	public String courseDetail(@RequestParam("id") String id, Model model) {
		member member = (member) session.getAttribute("member");	
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		model.addAttribute("courseData",course);
		Chapter chapter = chapterService.findById(intId);
		model.addAttribute("chapter",chapter);
//		StudentQuestion studentQuestion = studentQuestionService.findById(Id).orElse(null);;
//		model.addAttribute("studentQuestion",studentQuestion);
		
		List<StudentQuestion> studentQuestions = studentQuestionService.findByCourse(course);
	    model.addAttribute("studentQuestions", studentQuestions);
		
		System.out.println("重新整理");
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
	@PostMapping("/newQuestion")
	public String newQuestion(@RequestParam("id") String id, Model model) {
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		model.addAttribute("courseData",course);
		Chapter chapter = chapterService.findById(intId);
		model.addAttribute("chapter",chapter);
		
		
		
		return "courseDetail";
	}
	
	@PostMapping("/courseDetail")
	public String postCourseDetail(@RequestParam("id") Course courseId, Model model,@RequestParam("QuestionText") String QuestionText,RedirectAttributes attributes) {
	    
		member member = (member) session.getAttribute("member");
		
		StudentQuestion studentQuestion = new StudentQuestion();
		studentQuestion.setCourse(courseId);
		studentQuestion.setMember(member);
		studentQuestion.setStudentQuestionTime(new Timestamp(System.currentTimeMillis()));
		studentQuestion.setQuestionText(QuestionText);
		
		studentQuestionService.save(studentQuestion);
		 attributes.addAttribute("id", courseId.getId());

	    return "redirect:/courseDetail?id={id}";
	}

}
