package com.ispan.eeit69.controller;

import java.sql.Timestamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.memberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class RegController {

	memberService memberService;

	HttpSession session; // 注入 HttpSession

	public RegController(com.ispan.eeit69.service.memberService memberService, HttpSession session) {
		this.memberService = memberService;
		this.session = session;
	}

	@PostMapping("/regMember")
	public String regMember(@ModelAttribute("preMember") member member, Model model) {
		System.out.println("註冊資料傳入會員");
		
		if(memberService.existsById(member.getAccount())) {
			
			return "/visitorHomePage";
		}
		memberService.save(member);
		return "/visitorHomePage";
	}

	@PostMapping("/login")
	public String loginMember(@RequestParam("account") String account, @RequestParam("password") String password,
			Model model) {
		System.out.println("測試");
		System.out.println("帳號 = " + account + "，密碼 = " + password);
		member result = memberService.findByAccountAndPassword(account, password);
		if (result == null) {
			System.out.println("null");
			model.addAttribute("login", "fail");
			return "/visitorHomePage";
		} else {
			System.out.println("ok");
			model.addAttribute("memberdata", result);
			model.addAttribute("login", "success");
			session.setAttribute("member", result);
			session.setAttribute("login", "loginOK");
			return "/memberHomePage";
		}

	}
	
	@GetMapping("/logout")
	public String logout(Model model) {	
		session.invalidate();
		return "/visitorHomePage";
	}

	@ModelAttribute("preMember")
	public member beforeSave() {
		member member = new member();
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		member.setRegisterTime(ts);
		return member;
	}
}
