package com.ispan.eeit69.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ispan.eeit69.model.TeacherPicture;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.TeacherPictureService;
import com.ispan.eeit69.service.memberService;
import com.ispan.eeit69.utils.MemberValidator;

import jakarta.servlet.http.HttpSession;

@Controller
public class RegController {

	memberService memberService;
	TeacherPictureService teacherPictureService;
//	BCryptPasswordEncoder bCryptPasswordEncoder;
	BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
	
	@Autowired
	private MemberValidator memberValidator;
	HttpSession session; // 注入 HttpSession

	public RegController(com.ispan.eeit69.service.memberService memberService,
			TeacherPictureService teacherPictureService, HttpSession session) {
		super();
		this.memberService = memberService;
		this.teacherPictureService = teacherPictureService;
		this.session = session;
	}

//	@PostMapping("/regMember")
//	public String regMember(@ModelAttribute("preMember") member member, Model model) {
//		System.out.println("註冊資料傳入會員");
//
//		if (memberService.existsById(member.getAccount())) {
//			return "/visitorHomePage";
//		}
//		memberService.save(member);
//		return "/visitorHomePage";
//	}

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

	@PostMapping("/regMember")
	@ResponseBody
	public Map<String, String> regMember(@ModelAttribute("preMember") member member,
			@RequestParam("username") String username, @RequestParam("account") String account,
			@RequestParam("password") String password, Model model) {
		System.out.println("註冊資料傳入會員");
		System.out.println(member.getId());
		String encodedPw = bCryptPasswordEncoder.encode(password);
		System.out.println("加密後的密碼= " + encodedPw);
//		Password p = new Password(encodedPw);
//		String encodedPassword = BCrypt.hashpw(password, BCrypt.gensalt(11));
//		System.out.println("加密後的密碼= " + encodedPassword);
		member.setUsername(username);
		member.setAccount(account);
		member.setPassword(encodedPw);
		memberService.save(member);
		System.out.println(member);
		Map<String, String> response = new HashMap<>();
		System.out.println("資料新增成功");
		response.put("status", "success");
		return response;
	}

//	@PostMapping("/login")
//	@ResponseBody
//	public Map<String, String> loginMember(@RequestParam("account") String account,
//			@RequestParam("password") String password, Model model) {
//		Map<String, String> response = new HashMap<>();
//		System.out.println("進入login的controller，帳號 = " + account + " 密碼 = " + password);
//		member result = memberService.findByAccountAndPassword(account, password);
//		member memberPassword = memberService.findByAccount(account);
//		System.out.println("用信箱抓到的會員資料=" + memberPassword);
//		System.out.println("會員密碼(bcrypt加密過)=" + memberPassword.getPassword());
//		boolean isCorrectPw = bCryptPasswordEncoder.matches(password, memberPassword.getPassword());
//		System.out.println("用bcrypt驗證結果為=" + isCorrectPw);
//		if (isCorrectPw) {
//			System.out.println("帳號密碼正確");
//			TeacherPicture result2 = teacherPictureService.findByMember(result);
//			System.out.println("搜尋會員的照片=" + result2);
//			if (result2 == null) {
//				System.out.println("資料庫抓不到照片");
//			} else {
//				Blob pic = result2.getPhoto();
//				System.out.println("有抓到照片" + pic);
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
//			response.put("status", "success");
//		} else {
//			System.out.println("帳號密碼錯誤");
//			model.addAttribute("login", "fail");
//			response.put("status", "fail");
//			response.put("message", "帳號或密碼錯誤");
//		}
////		if (result == null) {
////			System.out.println("帳號密碼錯誤(result是空的)");
////			model.addAttribute("login", "fail");
////			response.put("status", "fail");
////			response.put("message", "帳號或密碼錯誤");
////		} else {
////			if (isCorrectPw) {
////				System.out.println("帳號密碼正確");
////				TeacherPicture result2 = teacherPictureService.findByMember(result);
////				System.out.println("搜尋會員的照片=" + result2);
////				if (result2 == null) {
////					System.out.println("資料庫抓不到照片");
////				} else {
////					Blob pic = result2.getPhoto();
////					System.out.println("有抓到照片" + pic);
////					// 將Blob數據轉換為Base64編碼的字符串
////					byte[] imageBytes = null;
////					try {
////						imageBytes = pic.getBytes(1, (int) pic.length());
////					} catch (SQLException e) {
////						e.printStackTrace();
////					}
////					String base64Image = Base64.getEncoder().encodeToString(imageBytes);
////					model.addAttribute("base64Image", base64Image);
////					session.setAttribute("base64Image", base64Image);
////				}
////				response.put("status", "success");
////			} else {
////				System.out.println("帳號密碼錯誤");
////				model.addAttribute("login", "fail");
////				response.put("status", "fail");
////				response.put("message", "帳號或密碼錯誤");
////			}
////		}
//
//		System.out.println("要回傳到前端的資料" + response.toString());
//		model.addAttribute("memberdata", memberPassword);
//		model.addAttribute("login", "success");
//		session.setAttribute("member", memberPassword);
//		session.setAttribute("login", "loginOK");
//		return response;
//
//	}

	@PostMapping("/login")
	@ResponseBody
	public Map<String, String> loginMember(@ModelAttribute member member, Model model, BindingResult bindingResult) {
		Map<String, String> response = new HashMap<>();
		memberValidator.validate(member, bindingResult);

		if (bindingResult.hasErrors()) {
			FieldError fieldErrorByAccount = bindingResult.getFieldError("account");
			FieldError fieldErrorByPassword = bindingResult.getFieldError("password");
			if(fieldErrorByAccount!=null && fieldErrorByPassword !=null) {
				response.put("alertBoxText", "帳號、密碼不能為空白");
			}else if(fieldErrorByAccount!=null) {
				response.put("alertBoxText", fieldErrorByAccount.getDefaultMessage());
			}else if(fieldErrorByPassword !=null) {
				response.put("alertBoxText", fieldErrorByPassword.getDefaultMessage());
			}
			
			response.put("status", "notBlank");
			response.put("message", "帳號或密碼格式不正確");
			return response;
		}
		String account = member.getAccount();
		String password = member.getPassword();
		System.out.println("進入login的controller，帳號 = " + account + " 密碼 = " + password);
		member result = memberService.findByAccountAndPassword(account, password);
		member memberPassword = memberService.findByAccount(account);
		System.out.println("用信箱抓到的會員資料=" + memberPassword);
		System.out.println("會員密碼(bcrypt加密過)=" + memberPassword.getPassword());
		boolean isCorrectPw = bCryptPasswordEncoder.matches(password, memberPassword.getPassword());
		System.out.println("用bcrypt驗證結果為=" + isCorrectPw);
		if (isCorrectPw) {
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
		} else {
			System.out.println("帳號密碼錯誤");
			model.addAttribute("login", "fail");
			response.put("status", "fail");
			response.put("alertBoxText", "帳號或密碼錯誤，請重新輸入！");
		}
//		if (result == null) {
//			System.out.println("帳號密碼錯誤(result是空的)");
//			model.addAttribute("login", "fail");
//			response.put("status", "fail");
//			response.put("message", "帳號或密碼錯誤");
//		} else {
//			if (isCorrectPw) {
//				System.out.println("帳號密碼正確");
//				TeacherPicture result2 = teacherPictureService.findByMember(result);
//				System.out.println("搜尋會員的照片=" + result2);
//				if (result2 == null) {
//					System.out.println("資料庫抓不到照片");
//				} else {
//					Blob pic = result2.getPhoto();
//					System.out.println("有抓到照片" + pic);
//					// 將Blob數據轉換為Base64編碼的字符串
//					byte[] imageBytes = null;
//					try {
//						imageBytes = pic.getBytes(1, (int) pic.length());
//					} catch (SQLException e) {
//						e.printStackTrace();
//					}
//					String base64Image = Base64.getEncoder().encodeToString(imageBytes);
//					model.addAttribute("base64Image", base64Image);
//					session.setAttribute("base64Image", base64Image);
//				}
//				response.put("status", "success");
//			} else {
//				System.out.println("帳號密碼錯誤");
//				model.addAttribute("login", "fail");
//				response.put("status", "fail");
//				response.put("message", "帳號或密碼錯誤");
//			}
//		}

		System.out.println("要回傳到前端的資料" + response.toString());
		model.addAttribute("memberdata", memberPassword);
		System.out.println("登入成功，用戶名稱=" + memberPassword.getUsername());
		model.addAttribute("login", "success");
		session.setAttribute("member", memberPassword);
		session.setAttribute("login", "loginOK");
		response.put("username", memberPassword.getUsername());
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
