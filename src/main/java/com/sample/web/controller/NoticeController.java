package com.sample.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author semin
 *
 */
@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	/**
	 * 
	 * @param 없음 
	 * @return 공지사항 페이지
	 */
	@GetMapping("/list.do")
	public String list(Model model) {
		
		return "notice/list";
	}
	
	/**
	 * 
	 * @param 글번호
	 * @return 상세페이지
	 */
	@GetMapping("/detail.do")
	public String detail(Model model) {
		
		return "notice/detail";
	}
	
	/**
	 * 
	 * @param 없음
	 * @return 없음
	 */
	@GetMapping("/add.do")
	public String add(Model model) {
		
		return "notice/add";
	}
	
	/**
	 * 
	 * @param 공지사항 등록정보
	 * @return 공지사항 리스트 페이지
	 */
	@PostMapping("/add.do")
	public String addNotice(Model model) {
		
		return "redirect:list.do";
	}
}
