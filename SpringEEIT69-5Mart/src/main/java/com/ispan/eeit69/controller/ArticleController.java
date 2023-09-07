package com.ispan.eeit69.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArticleController {
	@GetMapping("/articleInformation")
	public String articleInformation(Model model) {
		return "articleInformation";
	}
}
