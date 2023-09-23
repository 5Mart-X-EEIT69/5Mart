package com.ispan.eeit69.controller;

import java.io.Console;
import java.sql.Clob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

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
import org.springframework.web.bind.annotation.ResponseStatus;

import com.fasterxml.jackson.databind.JsonNode;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Unit;
import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.UnitService;
import com.ispan.eeit69.service.VideoService;

@Controller
public class TeacherController {

	CourseService courseService;
	ChapterService chapterService;
	UnitService unitService;
	VideoService videoService;
//	課程

	public TeacherController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			VideoService videoService) {
		super();
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.videoService = videoService;
	}

	@GetMapping("/TeacherMain")
	public String teacher(Model model) {
		return "TeacherMain";
	}// 跳轉至講師主頁面

	@GetMapping("/TeacherCreate")
	public String teacherCreate(Model model) {
		return "/TeacherCourse/TeacherCreateCourses";
	}// 跳轉至建立課程頁面

	@GetMapping("/TeacherEdit/{id}")
	public String teacherEdit(Model model, @PathVariable Integer id) {
		model.addAttribute("course", courseService.findById(id));
		return "/TeacherCourse/TeacherEditCourses";
	}// 跳轉至編輯課程頁面

	@GetMapping("/TeacherCreateFundraisingCourses")
	public String TeacherCreateFundraisingCourses(Model model) {
		return "/TeacherCourse/TeacherCreateFundraisingCourses";
	}// 跳轉至建立募資課程頁面

	@GetMapping("/TeacherCreateArticle")
	public String TeacherCreateArticle(Model model) {
		return "/TeacherCourse/TeacherCreateArticle";
	}// 跳轉至建立文章頁面

	@GetMapping("/TeacherCourseList")
	public String TeacherCourseList(Model model) {
		List<Course> course = courseService.findAll();
		model.addAttribute("course", course);
		return "/TeacherCourse/TeacherCourseList";
	}// 跳轉至課程清單頁面

//	講師交流

	@GetMapping("/TeacherComminicate")
	public String TeacherComminicate(Model model) {
		return "/TeacherComminicate/TeacherComminicate";
	}// 跳轉至講師交流頁面

	@GetMapping("/TeacherComminicateQA")
	public String TeacherComminicateQA(Model model) {
		return "/TeacherComminicate/TeacherComminicateQA";
	}// 跳轉至講師交流問與答頁面

	@GetMapping("/TeacherComminicateMessage")
	public String TeacherComminicateMessage(Model model) {
		return "/TeacherComminicate/TeacherComminicateMessage";
	}// 跳轉至講師交流私人訊息頁面

	@GetMapping("/TeacherComminicateTask")
	public String TeacherComminicateTask(Model model) {
		return "/TeacherComminicate/TeacherComminicateTask";
	}// 跳轉至講師交流作業頁面

	@GetMapping("/TeacherComminicateAnnouncement")
	public String TeacherComminicateAnnouncement(Model model) {
		return "/TeacherComminicate/TeacherComminicateAnnouncement";
	}// 跳轉至講師交流公告頁面

//	儀表板

	@GetMapping("/TeacherDashboard")
	public String TeacherDashboard(Model model) {
		return "/TeacherDashboard/TeacherDashboard";
	}// 跳轉至儀錶板頁面

	@GetMapping("/TeacherDashboardRevenue")
	public String TeacherDashboardRevenue(Model model) {
		return "/TeacherDashboard/TeacherDashboardRevenue";
	}// 跳轉至儀錶板營收頁面

	@GetMapping("/TeacherDashboardTraffic")
	public String TeacherDashboardTraffic(Model model) {
		return "/TeacherDashboard/TeacherDashboardTraffic";
	}// 跳轉至儀表板流量頁面

	@GetMapping("/TeacherDashboardWatched")
	public String TeacherDashboardWatched(Model model) {
		return "/TeacherDashboard/TeacherDashboardWatched";
	}// 跳轉至儀表板觀看時數頁面

	@GetMapping("/TeacherDashboardStudent")
	public String TeacherDashboardStudent(Model model) {
		return "/TeacherDashboard/TeacherDashboardStudent";
	}// 跳轉至儀表板學生頁面

//	講師資料 

	@GetMapping("/TeacherInformation")
	public String TeacherInformation(Model model) {
		return "/TeacherInformation/TeacherInformation";
	}// 跳轉至講師資料頁面

	@GetMapping("/TeacherInformationPhoto")
	public String TeacherInformationPhoto(Model model) {
		return "/TeacherInformation/TeacherInformationPhoto";
	}// 跳轉至講師資料照片頁面

	@GetMapping("/TeacherInformationIntroduction")
	public String TeacherInformationIntroduction(Model model) {
		return "/TeacherInformation/TeacherInformationIntroduction";
	}// 跳轉至講師資料自我介紹頁面

	@GetMapping("/TeacherInformationAbility")
	public String TeacherInformationAbility(Model model) {
		return "/TeacherInformation/TeacherInformationAbility";
	}// 跳轉至講師資料能力證明頁面

	@GetMapping("/TeacherInformationAccount")
	public String TeacherInformationAccount(Model model) {
		return "/TeacherInformation/TeacherInformationAccount";
	}// 跳轉至講師資料帳戶頁面

	@GetMapping("/bsjsTest")
	public String bsjsTest(Model model) {
		return "/bsjsTest";
	}// 跳轉至講師資料帳戶頁面

	@PostMapping("/submitCourse")
	public String createCourses(@RequestBody JsonNode formData, Model model, @ModelAttribute("preCourse") Course course)
			throws SerialException, SQLException {

		course.setTitle(formData.get("title").asText());
		course.setIntroduction(formData.get("introduction").asText());
		char[] c = formData.get("photo").asText().toCharArray();
		Clob clob = new SerialClob(c);
		course.setPhoto(clob);
		course.setPrice(formData.get("price").asInt());
		course.setLevel(formData.get("level").asText());
		course.setSort(formData.get("sort").asText());
		courseService.save(course);

		JsonNode courseArray = formData.get("course");
		final Chapter[] chapterTemp = new Chapter[1]; // 將 chapterTemp 定義為最終陣列，陣列是指向記憶體位置，寫Final也不影響
		ArrayList<Unit> unitTemp = new ArrayList<Unit>();
		for (JsonNode courseobj : courseArray) {
			courseobj.fields().forEachRemaining(entry -> {
				String attributeName = entry.getKey();
				JsonNode attributeValue = entry.getValue();
				System.out.println(attributeName + ": " + attributeValue.asText());
				if (attributeName.contains("chapter")) {
					// 章節
					Chapter chapter = new Chapter();
					chapter.setCourse(course);
					chapter.setChapterName(attributeValue.asText());
					chapter.setChapterNumber("章節" + (attributeName.substring(7)));
					chapterTemp[0] = chapterService.save(chapter);
				} else if (attributeName.contains("unit")) {
					// 單元
					Unit unit = new Unit();
					unit.setChapter(chapterTemp[0]);
					unit.setUnitName(attributeValue.asText());
					unit.setUnitNumber("單元" + (attributeName.substring(4)));
					unitTemp.add(unitService.save(unit));
//					unitCount[0]++;
//					System.out.println(unitCount[0]);
				}
			});
			System.out.println("run");
		}

		System.out.println("---videoStart---");
		JsonNode videoArray = formData.get("video");
		int[] unitCount = { 0 };// 將 unitCount 定義為陣列，陣列是指向記憶體位置。
		videoArray.fields().forEachRemaining(entry -> {
			String attributeName = entry.getKey();
			JsonNode attributeValue = entry.getValue();
			System.out.println(attributeName + ": " + attributeValue.asText());
			Video video = new Video();
			video.setUnit(unitTemp.get(unitCount[0]++));
			char[] videoValue = attributeValue.asText().toCharArray();
			try {
				Clob videoClob = new SerialClob(videoValue);
				video.setVideoValue(videoClob);
			} catch (Exception e) {
				e.printStackTrace();
			}
			video.setVideoNumber(attributeName);
			String name = video.getUnit().getUnitName();
			video.setVideoName(name + "_" + attributeName.substring(7));
			videoService.save(video);
		});
		System.out.println("run");
		System.out.println("---videoEnd---");// 目前影片上傳資料庫很慢是個隱憂，有機會要解決
		return "/TeacherCourse/TeacherCourseList";
	}

	@PutMapping("/TeacherUpdateCourse")
	@ResponseStatus(code = HttpStatus.NO_CONTENT)
	public void teacherUpdateCouese(@RequestBody JsonNode formData) throws SerialException, SQLException {
		Course course = courseService.findById(formData.get("id").asInt());
		course.setTitle(formData.get("title").asText());
		course.setIntroduction(formData.get("introduction").asText());
		char[] c = formData.get("photo").asText().toCharArray();
		Clob clob = new SerialClob(c);
		course.setPhoto(clob);
		course.setPrice(formData.get("price").asInt());
		course.setLevel(formData.get("level").asText());
		course.setSort(formData.get("sort").asText());
		courseService.save(course);
		System.out.println("修改現有課程名稱完成");
		
		JsonNode addUnit = formData.get("newUnit");
		Iterator<JsonNode> addUnitValue = addUnit.iterator();
		Iterator<String> addUnitKey = addUnit.fieldNames();
		System.out.println(addUnit.size());
		for (int i = 0; i < addUnit.size(); i++) {
			String UnitValue = addUnitValue.next().asText();
			String UnitKey = addUnitKey.next();
			Integer chapterId = Integer.valueOf(UnitKey.substring(9, UnitKey.indexOf("unit")));
			Integer unitNumber = Integer.valueOf(UnitKey.substring(UnitKey.indexOf("unit") + 4));
			int unitLen = chapterService.findById(chapterId).getUnit().size();
			if(unitLen>=unitNumber) {
				Iterator<Unit> unitIterator = chapterService.findById(chapterId).getUnit().iterator();
				for (int j = 1; j < unitNumber; j++) {
					unitIterator.next();
				}
				for(int k = 0 ; k<=(unitLen-unitNumber) ;k++) {
					unitIterator.next().setUnitNumber("單元"+(unitNumber+1+k));
				}
			}
			Unit newUnit = new Unit(chapterService.findById(chapterId),"單元"+unitNumber,UnitValue);
			unitService.save(newUnit);
			System.out.println("新增or插入單元完成");
			
			
			System.out.println("修改章節、單元名稱未完成，刪除章節、單元未完成");
			System.out.println("ChapterId : " + chapterId + "unitId : " + unitNumber + "value : " + UnitValue);
		}

	}// 更新課程後跳轉已開課內容

	@ModelAttribute("preCourse")
	public Course beforeSave() {
		Course course = new Course();
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		course.setRegisterTime(ts);
		return course;
	}
}
