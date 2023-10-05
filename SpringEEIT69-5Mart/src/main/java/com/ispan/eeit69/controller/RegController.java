package com.ispan.eeit69.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.memberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class RegController {

	memberService memberService;
	TeacherPictureService teacherPictureService;

	HttpSession session; // 注入 HttpSession

	public RegController(com.ispan.eeit69.service.memberService memberService,
			TeacherPictureService teacherPictureService, HttpSession session) {
		super();
		this.memberService = memberService;
		this.teacherPictureService = teacherPictureService;
		this.session = session;
	}

	@PostMapping("/regMember")
	public String regMember(@ModelAttribute("preMember") member member, Model model) {
		System.out.println("註冊資料傳入會員");

		if (memberService.existsById(member.getAccount())) {
			return "/visitorHomePage";
		}
		memberService.save(member);
		return "/visitorHomePage";
	}

//	@PostMapping("/login")
//	public String loginMember(@RequestParam("account") String account, @RequestParam("password") String password,
//			Model model) {
//		System.out.println("帳號 = " + account + "，密碼 = " + password);
//		member result = memberService.findByAccountAndPassword(account, password);
//
//		if (result == null) {
//			System.out.println("資料庫找不到會員資料，登入失敗");
//			model.addAttribute("login", "fail");
////			return "/homePage";
//			return "redirect:/homePage";
//		} else {
//			TeacherPicture result2 = teacherPictureService.findByMember(result);
//			System.out.println("搜尋會員的照片=" + result2);
//			if (result2 == null) {
//				System.out.println("資料庫抓不到照片");
//				
//			} else {
//
//				Blob pic = result2.getPhoto();
//				System.out.println(pic);
//				// 將Blob數據轉換為Base64編碼的字符串
//				byte[] imageBytes = null;
//				try {
//					imageBytes = pic.getBytes(1, (int) pic.length());
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}
//				String base64Image = Base64.getEncoder().encodeToString(imageBytes);
//				model.addAttribute("base64Image", base64Image);
//				session.setAttribute("base64Image", base64Image);
//			}
//			
//			System.out.println("ok");
//			model.addAttribute("memberdata", result);
//			model.addAttribute("login", "success");
//			session.setAttribute("member", result);
//			session.setAttribute("login", "loginOK");
//			return "/homePage";
//		}
//
//	}

	@PostMapping("/login")
	@ResponseBody
	public Map<String, String> loginMember(@RequestParam("account") String account,
			@RequestParam("password") String password, Model model) {
		Map<String, String> response = new HashMap<>();
		System.out.println("進入login的controller，帳號 = " + account + " 密碼 = " + password);	
		member result = memberService.findByAccountAndPassword(account, password);
		if (result == null) {
			System.out.println("帳號密碼錯誤");
			model.addAttribute("login", "fail");
			response.put("status", "fail");
			response.put("message", "帳號或密碼錯誤");
		} else {
			System.out.println("帳號密碼正確");
			TeacherPicture result2 = teacherPictureService.findByMember(result);
			System.out.println("搜尋會員的照片=" + result2);
			if (result2 == null) {
				System.out.println("資料庫抓不到照片");
			} else {
				Blob pic = result2.getPhoto();
				System.out.println("有抓到照片" + pic);
				// 將Blob數據轉換為Base64編碼的字符串
				byte[] imageBytes = null;
				try {
					imageBytes = pic.getBytes(1, (int) pic.length());
				} catch (SQLException e) {
					e.printStackTrace();
				}
				String base64Image = Base64.getEncoder().encodeToString(imageBytes);
				model.addAttribute("base64Image", base64Image);
				session.setAttribute("base64Image", base64Image);
			}
			response.put("status", "success");
		}
		
		System.out.println("要回傳到前端的資料" + response.toString());
		model.addAttribute("memberdata", result);
		model.addAttribute("login", "success");
		session.setAttribute("member", result);
		session.setAttribute("login", "loginOK");
		return response;

	}

	@GetMapping("/logout")
	public String logout(Model model) {
		session.invalidate();
//		return "/homePage";
		return "redirect:/homepage";
	}

	@PostMapping("/checkname")
	@ResponseBody
	public Map<String, Boolean> checkName(@RequestParam("name") String name) {
		System.out.println("驗證姓名有沒有人使用");
		boolean isExist = memberService.existsByUsername(name);

		Map<String, Boolean> response = new HashMap<>();
		response.put("isExist", isExist);
		System.out.println(response.toString());
//		response.put("isExist", true);
		return response;
	}

	@PostMapping("/checkemail")
	@ResponseBody
	public Map<String, Boolean> checkEmail(@RequestParam("email") String email) {
		System.out.println("驗證信箱有沒有人使用");
		boolean isExist = memberService.existsById(email);

		Map<String, Boolean> response = new HashMap<>();
		response.put("isExist", isExist);
		System.out.println(response.toString());
//		response.put("isExist", true);
		return response;
	}

	@ModelAttribute("preMember")
	public member beforeSave() {
		member member = new member();
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		member.setRegisterTime(ts);
		return member;
	}
}
