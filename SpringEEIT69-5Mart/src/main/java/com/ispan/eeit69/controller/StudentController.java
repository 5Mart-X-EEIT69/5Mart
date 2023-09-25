package com.ispan.eeit69.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.Unit;
import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.AnnouncementService;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.UnitService;
import com.ispan.eeit69.service.VideoService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    CourseService courseService;
    ChapterService chapterService;
    UnitService unitService;
    VideoService videoService;
    IntroductionService introductionService;
    TeacherPictureService teacherPictureService;
    AnnouncementService announcementService;
    HttpSession session;

    public StudentController(CourseService courseService, ChapterService chapterService, UnitService unitService,
            VideoService videoService, IntroductionService introductionService) {
        super();
        this.courseService = courseService;
        this.chapterService = chapterService;
        this.unitService = unitService;
        this.videoService = videoService;
        this.introductionService = introductionService;
        this.teacherPictureService = teacherPictureService;
        this.announcementService = announcementService;
        this.session = session;
    }

    // Student LMS Mapping
    @GetMapping("/studentsettings")
    public String home(Model model) {
        model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
        return "/StudentLearningManagementSystem/StudentAccountSettings";
    }

    @GetMapping("/student_dashboard")
	public String student_dashboard(Model model) {	
		return "/StudentLearningManagementSystem/student_dashboard";
    }

    @GetMapping("/student_course_viewer")
    public String student_course_viewer(Model model) {
        return "/StudentLearningManagementSystem/student_course_viewer";
    }
}
