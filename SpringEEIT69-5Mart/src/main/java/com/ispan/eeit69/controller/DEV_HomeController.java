package com.ispan.eeit69.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class DEV_HomeController {

	
//	@Autowired
//	private ApplicationContext applicationContext;
	@Autowired
	@Qualifier("requestMappingHandlerMapping")
	private RequestMappingHandlerMapping requestMappingHandlerMapping;

	@RequestMapping("getAllUrl")                                   
	@ResponseBody
	public Set<String> getAllUrl(HttpServletRequest request) {
	    Set<String> result = new HashSet<String>();

	    // 由於已經注入了具體的 Bean，因此無需再手動獲取
	    Map<RequestMappingInfo, HandlerMethod> handlerMethods = requestMappingHandlerMapping.getHandlerMethods();

	    for (RequestMappingInfo rmi : handlerMethods.keySet()) {
	        PatternsRequestCondition pc = rmi.getPatternsCondition();
	        if (pc != null) {  // 檢查 pc 是否為 null
	            Set<String> pSet = pc.getPatterns();
	            result.addAll(pSet);
	        }
	    }
	    return result;
	}



//	@GetMapping("/")
//	public String showAllUrls(Model model, HttpServletRequest request) {
//	    Set<String> allUrls = getAllUrl(request);
//	    model.addAttribute("allUrls", allUrls);
//	    return "index";  // 導向 index.jsp
//	}

}