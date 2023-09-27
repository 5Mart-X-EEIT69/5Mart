package com.ispan.eeit69.controller;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

@Controller
public class DEV_HomeController {

	
	
	
	@Autowired
    private RequestMappingHandlerMapping requestMappingHandlerMapping;
	
	@GetMapping("/")
    public String home(Model model) {
		// 獲取所有的路由
		Set<RequestMappingInfo> requestMappings = requestMappingHandlerMapping.getHandlerMethods().keySet();
		System.out.println("All request mappings: " + requestMappings);  // 輸出所有的路由訊息
		
		// 提取 URL 模式
		List<String> urls = requestMappings.stream()
				
//		    .filter(info -> info.getPatternsCondition() != null)  // 添加這一行來過濾 null 值

			.filter(info -> info.getPatternsCondition() != null && !info.getPatternsCondition().getPatterns().isEmpty())
		    .flatMap(info -> info.getPatternsCondition().getPatterns().stream())
		    .collect(Collectors.toList());

        // 將 URL 模式添加到 model 中，以便在 JSP 中使用
        model.addAttribute("urls", urls);
        System.out.println("URLs to be displayed: " + urls);

        
        model.addAttribute("welcome", "歡迎來到Spring Boot的世界");
        
        return "index"; // 導向 index.jsp
    }
}