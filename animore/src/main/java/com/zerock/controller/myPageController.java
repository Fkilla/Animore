package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/myPage/*")
public class myPageController {
	@GetMapping("/mypage")
	public void mypage() {
		
	}
	
	@GetMapping("/myZzim")
	public void myZzim() {
		
	}
	
	@GetMapping("/order_list")
	public void order_list() {
		
	}
	
	@GetMapping("/adopt_reg_form_view")
	public void adopt_reg_form_view () {
		
	}
	
	@GetMapping("/adopt_reg_form")
	public void adopt_reg_form() {
		
	}
	
	@GetMapping("/visit_reg_form_view")
	public void visit_reg_form_view () {
		
	}
	
	@GetMapping("/visit_reg_form")
	public void visit_reg_form () {
		
	}
	
	// 마이페이지 개인정보 수정
	@GetMapping("/edit")
	public String getEdit() {
		log.info("edit....");
		return "mypage/edit";
	}
}
