package com.ispan.eeit69.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ispan.eeit69.model.Chapter;
import com.ispan.eeit69.model.Course;
import com.ispan.eeit69.model.ShoppingCart;
import com.ispan.eeit69.model.member;
import com.ispan.eeit69.service.CourseService;
import com.ispan.eeit69.service.impl.CourseServiceImpl;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller
@SessionAttributes({ "memberdata" })
public class ShoppingCartController {
	private static Logger log = LoggerFactory.getLogger(ShoppingCartController.class);

	CourseService courseService;
	HttpSession httpSession;

	public ShoppingCartController(CourseService courseService, HttpSession httpSession) {
		this.courseService = courseService;
		this.httpSession = httpSession;
	}

	@GetMapping("/addtocart")
	public String addtocart(@RequestParam("id") String id, Model model) {
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
	
	
	
	
	
	
	
}
