package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zerock.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/customerService/*")
public class CustomerController {
	
	private NoticeService service;
//	
//	@GetMapping("/index")
//	public String main() {
//		log.info("main");
//		return "/index";
//	}
	
	// 전체 목록 보여주기
	@GetMapping("/notice")
	public String customerService(Model model) {
		log.info("customerService....");
		model.addAttribute("customer", service.getList());
		
		return "/customerService/notice";
	}
	
	@GetMapping("/register")
	public String register() {
		log.info("register...");
		
		return "/customerService/register";
	}
	
	

	
	

}
