package com.ispan.eeit69.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
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
	
	@GetMapping("/checkout") // 購物車結帳路由
	public String checkout(Model model) {
	    ShoppingCart cart = (ShoppingCart) httpSession.getAttribute("ShoppingCart");
	    if (cart != null) {
	        // 計算購物車總價
	        double totalPrice = 0.0;
	        for (Course course : cart.getContent().values()) {
	            totalPrice += course.getPrice();
	        }
	        
	        // 將總價添加到模型
	        model.addAttribute("totalPrice", totalPrice);
	        model.addAttribute("cart", cart);
	    }
	    
	    return "check";  // 返回結帳頁面
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
	
	@GetMapping("/ECpay")
	public String ECpay(@RequestParam("courseId") String courseId,
			@RequestParam("memberId") String memberId , Model model) {		
		AllInOne aio = new AllInOne("");
		AioCheckOutALL obj = new AioCheckOutALL();
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		obj.setMerchantTradeDate(dateFormat.format(date));//交易時間
		
		SimpleDateFormat tradeFormat= new SimpleDateFormat("MMddHHmmss");
		System.out.println("tradeFormat : "+ tradeFormat);
		String TradeNo = "5mart" + tradeFormat.format(date);
		obj.setMerchantTradeNo(TradeNo);
		Course course = courseService.findById(Integer.valueOf(courseId));
		Integer price = course.getPrice();		
		obj.setTotalAmount(String.valueOf(price));//價格
		obj.setTradeDesc("課程名稱: " + course.getTitle() + "分類: "  + course.getSort() + "適合程度: " + course.getLevel());
		obj.setItemName(course.getTitle());//商品名稱
		obj.setReturnURL("http://localhost:8080/SpringEEIT69-5Mart/homepage");//網站沒對外，所以沒辦法獲得付款完成訊息
		obj.setNeedExtraPaidInfo("N");
		String form = aio.aioCheckOut(obj, null);
		System.out.println(form);
		model.addAttribute("form", form);
//		處理綠界表單
		
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
//		會員增加課程，其實還要新增訂單表，沒時間弄
		
		
		return "ECpay";
	}
}
