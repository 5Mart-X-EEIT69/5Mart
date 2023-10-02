package com.ispan.eeit69.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.ispan.eeit69.model.Announcement;
import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.Introduction;
import com.ispan.eeit69.model.StudentQuestion;
import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.TeacherReply;
import com.ispan.eeit69.model.Unit;
import com.ispan.eeit69.model.Video;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.AnnouncementService;
import com.ispan.eeit69.service.ChapterService;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.IntroductionService;
import com.ispan.eeit69.service.StudentQuestionService;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.TeacherReplyService;
import com.ispan.eeit69.service.UnitService;
import com.ispan.eeit69.service.VideoService;
import com.ispan.eeit69.service.memberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class TeacherController {

	CourseService courseService;
	ChapterService chapterService;
	UnitService unitService;
	VideoService videoService;
	IntroductionService introductionService;
	TeacherPictureService teacherPictureService;
	AnnouncementService announcementService;
	HttpSession session;
	memberService memberService;
	TeacherReplyService teacherReplyService;

//	課程

	public TeacherController(CourseService courseService, ChapterService chapterService, UnitService unitService,
			VideoService videoService, IntroductionService introductionService,
			TeacherPictureService teacherPictureService, AnnouncementService announcementService, HttpSession session,
			com.ispan.eeit69.service.memberService memberService,
			com.ispan.eeit69.service.TeacherReplyService teacherReplyService) {
		this.courseService = courseService;
		this.chapterService = chapterService;
		this.unitService = unitService;
		this.videoService = videoService;
		this.introductionService = introductionService;
		this.teacherPictureService = teacherPictureService;
		this.announcementService = announcementService;
		this.session = session;
		this.memberService = memberService;
		this.teacherReplyService = teacherReplyService;
	}

	@GetMapping("/TeacherMain")
	public String teacher(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "TeacherMain";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師主頁面

	@GetMapping("/TeacherCreate")
	public String teacherCreate(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherCourse/TeacherCreateCourses";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至建立課程頁面

	@GetMapping("/TeacherEdit/{id}")
	public String teacherEdit(Model model, @PathVariable Integer id) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			model.addAttribute("course", courseService.findById(id));
			return "/TeacherCourse/TeacherEditCourses";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至編輯課程頁面

	@GetMapping("/TeacherCreateFundraisingCourses")
	public String TeacherCreateFundraisingCourses(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherCourse/TeacherCreateFundraisingCourses";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至建立募資課程頁面

	@GetMapping("/TeacherCreateArticle")
	public String TeacherCreateArticle(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherCourse/TeacherCreateArticle";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至建立文章頁面

	@GetMapping("/TeacherCourseList")
	public String TeacherCourseList(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			List<Course> course = courseService.findByTeacherId(member.getId());
			model.addAttribute("course", course);
			return "/TeacherCourse/TeacherCourseList";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至課程清單頁面

	@GetMapping("/TeacherCourseListAll")
	public String TeacherCourseListAll(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			List<Course> course = courseService.findAll();
			model.addAttribute("course", course);
			return "/TeacherCourse/TeacherCourseList";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至課程清單頁面
//	講師交流

	@GetMapping("/TeacherComminicate")
	public String TeacherComminicate(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherComminicate/TeacherComminicate";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師交流頁面

	@GetMapping("/TeacherComminicateQA")
	public String TeacherComminicateQA(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			List<Course> course = courseService.getCoursesByTeacher(member);

			model.addAttribute("course", course);
			return "/TeacherComminicate/TeacherComminicateQA";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至講師交流問與答頁面

	@GetMapping("/TeacherComminicateMessage")
	public String TeacherComminicateMessage(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherComminicate/TeacherComminicateMessage";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師交流私人訊息頁面

	@GetMapping("/TeacherComminicateTask")
	public String TeacherComminicateTask(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherComminicate/TeacherComminicateTask";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師交流作業頁面

	@GetMapping("/TeacherComminicateAnnouncement")
	public String TeacherComminicateAnnouncement(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			List<Course> course = courseService.getCoursesByTeacher(member);
			model.addAttribute("course", course);
			return "/TeacherComminicate/TeacherComminicateAnnouncement";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師交流公告頁面

//	儀表板

	@GetMapping("/TeacherDashboard")
	public String TeacherDashboard(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherDashboard/TeacherDashboard";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至儀錶板頁面

	@GetMapping("/TeacherDashboardRevenue")
	public String TeacherDashboardRevenue(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherDashboard/TeacherDashboardRevenue";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至儀錶板營收頁面

	@GetMapping("/TeacherDashboardTraffic")
	public String TeacherDashboardTraffic(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherDashboard/TeacherDashboardTraffic";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至儀表板流量頁面

	@GetMapping("/TeacherDashboardWatched")
	public String TeacherDashboardWatched(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherDashboard/TeacherDashboardWatched";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至儀表板觀看時數頁面

	@GetMapping("/TeacherDashboardStudent")
	public String TeacherDashboardStudent(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherDashboard/TeacherDashboardStudent";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至儀表板學生頁面

//	講師資料 

	@GetMapping("/TeacherInformation")
	public String TeacherInformation(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherInformation/TeacherInformation";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師資料頁面

	@GetMapping("/TeacherInformationPhoto")
	public String TeacherInformationPhoto(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			TeacherPicture teacherPicture = teacherPictureService.findByMember(member);

			if (teacherPicture != null) {
				// 将Blob数据转换为Base64编码的字符串

				byte[] imageBytes;
				try {
					imageBytes = teacherPicture.getPhoto().getBytes(1, (int) teacherPicture.getPhoto().length());
					String base64Image = Base64.getEncoder().encodeToString(imageBytes);
					model.addAttribute("base64Image", base64Image);
					session.setAttribute("base64Image", base64Image);
				} catch (SQLException e) {
					System.out.println(e);
					e.printStackTrace();
				}

			}
			return "/TeacherInformation/TeacherInformationPhoto";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至講師資料照片頁面

	@GetMapping("/TeacherInformationIntroduction")
	public String TeacherInformationIntroduction(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			System.out.println("TESTGETMAPPUNG");
			Introduction introduction = introductionService.findByMember(member);
			model.addAttribute("introduction", introduction);

			return "/TeacherInformation/TeacherInformationIntroduction";
		} else {
			return "redirect:/homepage";
		}

	}// 跳轉至講師資料自我介紹頁面

	@GetMapping("/TeacherInformationAbility")
	public String TeacherInformationAbility(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherInformation/TeacherInformationAbility";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師資料能力證明頁面

	@GetMapping("/TeacherInformationAccount")
	public String TeacherInformationAccount(Model model) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			return "/TeacherInformation/TeacherInformationAccount";
		} else {
			return "redirect:/homepage";
		}
	}// 跳轉至講師資料帳戶頁面

	@GetMapping("/bsjsTest")
	public String bsjsTest(Model model) {
		return "/bsjsTest";
	}// 跳轉至講師資料帳戶頁面

	@PostMapping("/submitCourse")
	public ResponseEntity<Integer> createCourses(@RequestBody JsonNode formData, Model model, @ModelAttribute("preCourse") Course course)
			throws SerialException, SQLException {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			course.setTitle(formData.get("title").asText());
			course.setIntroduction(formData.get("introduction").asText());
			char[] c = formData.get("photo").asText().toCharArray();
			Clob clob = new SerialClob(c);
			course.setPhoto(clob);
			course.setPrice(formData.get("price").asInt());
			course.setLevel(formData.get("level").asText());
			course.setSort(formData.get("sort").asText());
			// 建立課程

			member user = memberService.findByMemberId(formData.get("userId").asInt());
			course.setTeacher(user);
			courseService.save(course);
//			user.getCourse().add(newCourse);
			// 建立的課程跟當前登入的帳號做多對多連接

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
//						unitCount[0]++;
//						System.out.println(unitCount[0]);
					}
				});
				System.out.println("run");
			}
			// 課程跟章節單元做一對多連接


//			System.out.println("---videoStart---");
//			JsonNode videoArray = formData.get("video");
//			JsonNode videoName = formData.get("videoName");
//			System.out.println("videoArray : " + videoArray.size());
//			System.out.println("videoName : " + videoName.size());
//			Iterator<JsonNode> videoNameIterator = videoName.iterator();				
//			int[] unitCount = { 0 };// 將 unitCount 定義為陣列，陣列是指向記憶體位置。
//			videoArray.fields().forEachRemaining(entry -> {
//				String attributeName = entry.getKey();
//				JsonNode attributeValue = entry.getValue();
//				System.out.println(attributeName + ": " + attributeValue.asText());
//				Video video = new Video();
//				video.setUnit(unitTemp.get(unitCount[0]++));
//				System.out.println(attributeValue);
//				if(attributeValue.asText()!="") {
//					byte[] videoValue = Base64.getDecoder().decode(attributeValue.asText().split(",")[1]);
//					System.out.println(videoValue);
//					try {
//						Blob videoBlob = new SerialBlob(videoValue);
//						video.setVideoData(videoBlob);
//						System.out.println("TEST");
//					} catch (Exception e) {
//						System.out.println("影片上傳失敗！");
//						e.printStackTrace();
//					}//影片處理					
//				}
//				
//				video.setVideoNumber(attributeName);//影片章節單元
//				
//				if(videoNameIterator.hasNext()) {
//					video.setVideoName(videoNameIterator.next().asText());//影片名稱					
//				}
//				String uuid = UUID.randomUUID().toString();
//				video.setUuid(uuid);//設置Uuid
//				videoService.save(video);
//				System.out.println("影片上傳成功！，產生的UUID 是：" + uuid);
//			});
//			//單元跟影片做一對多連接(目前@標籤是寫一對多，實際上只有一對一，懶得改@標籤)
//			System.out.println("run");
//			System.out.println("---videoEnd---");// 目前影片上傳資料庫很慢是個隱憂，有機會要解決
			return new ResponseEntity<Integer>(course.getId(),HttpStatus.OK);		
		}else {
			return new ResponseEntity<Integer>(0,HttpStatus.NOT_FOUND) ;


		}
	}
	
	@PostMapping(value =  "/createCourseVideo" , consumes = {"multipart/form-data"})
	public ResponseEntity<String> createCourseVideo(
			@RequestPart("videos") List<MultipartFile> videos,
			@RequestParam("courseId") Integer courseId,
			@RequestParam("chapterAndUnitNumber") List<String> chapterAndUnitNumber) throws SerialException, SQLException, IOException {
		member member = (member) session.getAttribute("member");
		if(member != null) {
			System.out.println(courseId);
			System.out.println("接收到的字串數量：" + chapterAndUnitNumber.size());
			System.out.println("接收到的檔案數量：" + videos.size());
			Course course =courseService.findById(courseId);
			Set<Chapter> chapters = course.getChapter();
			List<Chapter> chapterList = new ArrayList<Chapter>(chapters);
			Iterator<MultipartFile> videoDataIterator = videos.iterator();
			for(String cuNumber :chapterAndUnitNumber) {
				System.out.println("---videoStart---");
				Integer cnumber =Integer.valueOf(cuNumber.substring(7, cuNumber.indexOf("-")));
				Integer unumber =Integer.valueOf(cuNumber.substring(cuNumber.indexOf("-")+1));
				System.out.println("cnumber: " + cnumber + "unumber: " + unumber);
				Set<Unit> units =chapterList.get(cnumber-1).getUnit();
				List<Unit> unitList = new ArrayList<Unit>(units);
				MultipartFile videofile = videoDataIterator.next();
				Blob videoDataBlob = new SerialBlob(videofile.getBytes());
				Unit unit = unitList.get(unumber-1);
				Video video = new Video();
				video.setUnit(unit);
				video.setVideoData(videoDataBlob);
				String uuid = UUID.randomUUID().toString();
				video.setUuid(uuid);
				video.setVideoName(videofile.getOriginalFilename());
				video.setVideoNumber(cuNumber);
				videoService.save(video);
				System.out.println("影片上傳成功！，產生的UUID 是：" + uuid);
				System.out.println("---videoEnd---");
			}
			

			return new ResponseEntity<>("完成",HttpStatus.OK); 
		}else {
			return new ResponseEntity<>("會員尚未登入",HttpStatus.NOT_FOUND);
		}
	}
	

	@PutMapping("/TeacherUpdateCourse")
	@ResponseStatus(code = HttpStatus.NO_CONTENT)
	public void teacherUpdateCouese(@RequestBody JsonNode formData) throws SerialException, SQLException {
		member member = (member) session.getAttribute("member");
		if (member != null) {
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
			System.out.println("修改課程基本資訊完成");
			// 修改課程基本資訊
			JsonNode existingChapter = formData.get("existingChapter");
			Iterator<JsonNode> existingChapterValue = existingChapter.iterator();
			Iterator<String> existingChapterKey = existingChapter.fieldNames();
			for (int i = 0; i < existingChapter.size(); i++) {
				String chapterValue = existingChapterValue.next().asText();
				String chapterKey = existingChapterKey.next();
				Chapter existchapter = chapterService.findById(Integer.valueOf(chapterKey));
				existchapter.setChapterName(chapterValue);
				chapterService.save(existchapter);
				System.out.println("修改現有章節名稱完成");
			}
			// 修改章節名稱
			JsonNode existingUnit = formData.get("existingUnit");
			Iterator<JsonNode> existingUnitValue = existingUnit.iterator();
			Iterator<String> existingUnitKey = existingUnit.fieldNames();
			for (int i = 0; i < existingUnit.size(); i++) {
				String unitValue = existingUnitValue.next().asText();
				String unitKey = existingUnitKey.next();
				Unit existUnit = unitService.findById(Integer.valueOf(unitKey));
				existUnit.setUnitName(unitValue);
				unitService.save(existUnit);
				System.out.println("修改現有單元名稱完成");
			}
			// 修改單元名稱

			JsonNode addChapter = formData.get("newChapter");
			Iterator<JsonNode> addChapterValue = addChapter.iterator();
			Iterator<String> addChapterKey = addChapter.fieldNames();
			ArrayList<Chapter> chapterTemp = new ArrayList<Chapter>();
			System.out.println(addChapter.size());
			for (int i = 0; i < addChapter.size(); i++) {
				String chapterValue = addChapterValue.next().asText();
				String chapterKey = addChapterKey.next();
				Integer courseId = Integer.valueOf(chapterKey.substring(8, chapterKey.indexOf("chapter")));
				Integer chapterNumber = Integer.valueOf(chapterKey.substring(chapterKey.indexOf("chapter") + 7));
				int chapterLen = courseService.findById(courseId).getChapter().size();
				if (chapterLen >= chapterNumber) {
					Iterator<Chapter> chapterIterator = courseService.findById(courseId).getChapter().iterator();
					for (int j = 1; j < chapterNumber; j++) {
						chapterIterator.next();
					}
					for (int k = 0; k <= (chapterLen - chapterNumber); k++) {
						chapterIterator.next().setChapterNumber("章節" + (chapterNumber + 1 + k));
					}
				} // 判斷是插入後先執行Rename再插入章節
				Chapter newChapter = new Chapter(courseService.findById(courseId), "章節" + chapterNumber, chapterValue);
				chapterService.save(newChapter);
				chapterTemp.add(newChapter);
				System.out.println("新增or插入章節完成");
				System.out.println(
						"courseId : " + courseId + "chapterNumber : " + chapterNumber + "value : " + chapterValue);
			}
//			新增章節

			JsonNode addUnit = formData.get("newUnit");
			Iterator<JsonNode> addUnitValue = addUnit.iterator();
			Iterator<String> addUnitKey = addUnit.fieldNames();
			System.out.println(addUnit.size());
			int newChapterCount = 0;
			for (int i = 0; i < addUnit.size(); i++) {
				String UnitValue = addUnitValue.next().asText();
				String UnitKey = addUnitKey.next();
				Integer chapterId = Integer.valueOf(UnitKey.substring(9, UnitKey.indexOf("unit")));
				Integer unitNumber = Integer.valueOf(UnitKey.substring(UnitKey.indexOf("unit") + 4));
				if (chapterId == 0) {
					// jsp中我將新章節的chapterId定義為0
					Unit newUnit = new Unit(chapterTemp.get(newChapterCount++), "單元" + unitNumber, UnitValue);
					unitService.save(newUnit);
				} else {
					int unitLen = chapterService.findById(chapterId).getUnit().size();
					if (unitLen >= unitNumber) {
						Iterator<Unit> unitIterator = chapterService.findById(chapterId).getUnit().iterator();
						for (int j = 1; j < unitNumber; j++) {
							unitIterator.next();
						}
						for (int k = 0; k <= (unitLen - unitNumber); k++) {
							unitIterator.next().setUnitNumber("單元" + (unitNumber + 1 + k));
						}
					} // 判斷是插入後先執行Rename再插入單元
					Unit newUnit = new Unit(chapterService.findById(chapterId), "單元" + unitNumber, UnitValue);
					unitService.save(newUnit);
				} // 判斷該單元是插入至現有章節還是新增的章節內
				System.out.println("新增or插入單元完成");
				System.out.println("ChapterId : " + chapterId + "unitId : " + unitNumber + "value : " + UnitValue);
			}
//			新增單元
			JsonNode chaptereDeleteIdGroup = formData.get("chapterdedeteIdgroup");
			JsonNode unitDeleteIdGroup = formData.get("unitdedeteIdgroup");
			for (JsonNode unitDeleteId : unitDeleteIdGroup) {
				unitService.deleteById(unitDeleteId.asInt());
				System.out.println("單元ID");
				System.out.println(unitDeleteId.asInt());
			}
			for (JsonNode chapterDeleteId : chaptereDeleteIdGroup) {
				chapterService.deleteById(chapterDeleteId.asInt());
				System.out.println("章節ID");
				System.out.println(chapterDeleteId.asInt());
			}

			System.out.println("刪除章節、單元完成");

		} else {
			System.out.println("帳號未登入!");
		}

	}// 更新課程後跳轉已開課內容

	@DeleteMapping("/TeacherDelete/{id}")
	@ResponseStatus(code = HttpStatus.NO_CONTENT)
	public void TeacherDelete(@PathVariable Integer id) {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			if (courseService.findById(id) != null) {
				System.out.println("測試刪除" + id);
				Course deleteCourse = courseService.findById(id);
				Set<Chapter> deleteChapters = deleteCourse.getChapter();
				for (Chapter deleteChapter : deleteChapters) {
					System.out.println("執行迴圈1...");
					Set<Unit> deleteUnits = deleteChapter.getUnit();
					for (Unit deleteUnit : deleteUnits) {
						System.out.println("執行迴圈2...");
						unitService.deleteById(deleteUnit.getUnitId());
					}
					chapterService.deleteById(deleteChapter.getChapterId());
				}
				courseService.deleteById(id);
			}
		} else {
			System.out.println("帳號未登入!");
		}

	}

	@ModelAttribute("preCourse")
	public Course beforeSave() {
		member member = (member) session.getAttribute("member");
		if (member != null) {
			Course course = new Course();
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			course.setRegisterTime(ts);
			return course;
		} else {
			return null;
		}

	}

	@PostMapping("/TeacherInformationIntroduction")
	public String introduction(@ModelAttribute Introduction introduction, @RequestParam("memberId") Integer memberID,
			@RequestParam("IntroductionText") String IntroductionText, @RequestParam("Expertise") String Expertise,
			@RequestParam("Blog") String Blog, @RequestParam("Youtube") String Youtube,
			@RequestParam("Facebook") String Facebook) {

		member member = (member) session.getAttribute("member"); // 找出會員
		Introduction introduction1 = introductionService.findByMember(member); // 在Introduction表內，用member去找到自我介紹那行

		if (introduction1 == null) {
			member member2 = memberService.findByMemberId(memberID);
			Introduction introduction2 = new Introduction(IntroductionText, Expertise, Blog, Youtube, Facebook,
					member2);
			introductionService.save(introduction2);
		} else {
			introduction1.setIntroductionText(IntroductionText);
			introduction1.setExpertise(Expertise);
			introduction1.setBlog(Blog);
			introduction1.setFacebook(Facebook);
			introduction1.setYoutube(Youtube);

			introductionService.update(introduction1);
		}

		return "/TeacherInformation/TeacherInformationIntroduction";
	}

	@PostMapping("/TeacherInformationPhoto")
	public String teacherpicture(@RequestParam("photo") MultipartFile photo, Model model,
			@RequestParam("memberId") Integer memberID) throws IOException, SerialException, SQLException {
		member member = (member) session.getAttribute("member");
		TeacherPicture teacherPicture = teacherPictureService.findByMember(member);

		if (teacherPicture == null) {
			byte[] photoBytes = photo.getBytes();
			Blob blob = new SerialBlob(photoBytes);
			member member1 = memberService.findByMemberId(memberID);
			TeacherPicture teacherPicture1 = new TeacherPicture(blob, member1);
			teacherPictureService.save(teacherPicture1);
			// 将Blob数据转换为Base64编码的字符串
			byte[] imageBytes = teacherPicture1.getPhoto().getBytes(1, (int) teacherPicture1.getPhoto().length());
			String base64Image = Base64.getEncoder().encodeToString(imageBytes);

			model.addAttribute("base64Image", base64Image);
			session.setAttribute("base64Image", base64Image);
		} else {
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

				model.addAttribute("base64Image", base64Image);
				session.setAttribute("base64Image", base64Image);
			}

		}

		return "/TeacherInformation/TeacherInformationPhoto";
	}

	@PostMapping("/updateAnnouncement")
	public String updateAnnouncement(@RequestParam Integer courseId, @RequestParam String announcementContent,
			Timestamp announcementTime) {
		member teacher = (member) session.getAttribute("member");
		courseService.updateAnnouncementForTeacher(courseId, announcementContent, announcementTime, teacher);
		return "redirect:/TeacherComminicateAnnouncement"; // redirect back to the announcements page
	}

	@PostMapping("/newTeacherReply")
	public String newTeacherReply(Model model, @RequestParam("announcementQA") String teacherReply) {
		member member = (member) session.getAttribute("member");	
		
		TeacherReply teacherReply1 = new TeacherReply(teacherReply);
		
		teacherReplyService.save(teacherReply1);

		model.addAttribute("teacherReply",teacherReply1);

		return "redirect:/TeacherComminicateQA";

	}

}