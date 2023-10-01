package com.ispan.eeit69.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.ShoppingCart;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.memberService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes({ "memberdata", "ShoppingCart" })
public class ShoppingCartController {
	private static Logger log = LoggerFactory.getLogger(ShoppingCartController.class);

	CourseService courseService;
	memberService memberService;
	HttpSession httpSession;

	

	public ShoppingCartController(CourseService courseService, com.ispan.eeit69.service.memberService memberService,
			HttpSession httpSession) {
		super();
		this.courseService = courseService;
		this.memberService = memberService;
		this.httpSession = httpSession;
	}

	@GetMapping("/addtocart")
	public String addToCart(@RequestParam("id") String id, Model model) {
//		member member =  (member)model.getAttribute("memberdata");
		member member = (member) httpSession.getAttribute("member");
		if (member == null) {
			log.info("session裡沒有memberdata物件(會員資料)，跳轉首頁讓使用者登入");
			System.out.println("id值 " + id);
			return "homePage";
		}
//		Map<Integer, Course> cart = (Map<Integer, Course>)httpSession.getAttribute("ShoppingCart");
		ShoppingCart cart = (ShoppingCart) httpSession.getAttribute("ShoppingCart");
		if (cart == null) {
			log.info("session裡沒有ShoppingCart物件，新建了ShoppingCart物件");
			ShoppingCart ShoppingCart = new ShoppingCart();
			Integer intId = Integer.parseInt(id);
			Course cource = courseService.findById(intId);
			ShoppingCart.addToCart(intId, cource);
			Map<Integer, Course> mycart = ShoppingCart.getContent();
//			model.addAttribute("ShoppingCart", cart);
			httpSession.setAttribute("mycart", mycart);
			httpSession.setAttribute("ShoppingCart", ShoppingCart);
		} else {
			Integer intId = Integer.parseInt(id);
			Course cource = courseService.findById(intId);
			cart.addToCart(intId, cource);
			Map<Integer, Course> mycart = cart.getContent();
//			model.addAttribute("ShoppingCart", cart);
			httpSession.setAttribute("mycart", mycart);
		}
		return "redirect:/courseDetail?id=" + id;
	}

	@GetMapping("/removefromcart")
	public ResponseEntity<Map<String, Object>> removeFromCart(@RequestParam("id") String id) {
		System.out.println("刪除的id值= " + id);
		ShoppingCart cart = (ShoppingCart) httpSession.getAttribute("ShoppingCart");
		Integer intId = Integer.parseInt(id);
		boolean isRemove = cart.removeToCart(intId);
		System.out.println(isRemove);
		log.info("有沒有刪除: " + isRemove);
		Map<Integer, Course> mycart = cart.getContent();
		httpSession.setAttribute("mycart", mycart);

		Map<String, Object> response = new HashMap<>();
		if (isRemove) {
			response.put("status", 200);
		} else {
			response.put("status", 500); // 或其他適當的狀態碼
		}
		System.out.println("刪除購物車");
		return new ResponseEntity<>(response, HttpStatus.OK);
	}

	@GetMapping("/buyone")
	public String buyOne(@RequestParam("id") String id, Model model) {
		Integer intId = Integer.parseInt(id);
		Course course = courseService.findById(intId);
		model.addAttribute("course", course);
		return "check";
	}

	// 訂單確認送出
	@PostMapping("/ordercompleted")
	public ResponseEntity<Map<String, Object>> orderCompleted(@RequestParam("courseId") String courseId,
			@RequestParam("memberId") String memberId) {
		System.out.println("課程ID= " + courseId);
		System.out.println("會員ID= " + memberId);
		Integer intMemberId = Integer.parseInt(memberId);
		Integer intCourseId = Integer.parseInt(courseId);
		member member = memberService.findByMemberId(intMemberId);
		Course newCourse = courseService.findById(intCourseId);
		Set<Course> memberBuyCourseSet =  member.getBuyCourses();
		memberBuyCourseSet.add(newCourse);
		member.setBuyCourses(memberBuyCourseSet);
		memberService.save(member);
		Map<String, Object> response = new HashMap<>();
		response.put("status", 200);

		return new ResponseEntity<>(response, HttpStatus.OK);
	}
}
