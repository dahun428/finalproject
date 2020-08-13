package com.sample.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/performance")
public class PerformanceContoller {

	@GetMapping("/list.do")
	public String list(Model model) {
		
		return "/performance/list";
	}
}
