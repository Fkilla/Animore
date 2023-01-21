//package com.zerock.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.zerock.domain.NoticeVO;
//import com.zerock.service.NoticeService;
//
//import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j;
//
//@Controller
//@Log4j
//@AllArgsConstructor
//@RequestMapping("/manager/*")
//public class ManagerController {
//	
//	private NoticeService service;
//
//	// 공지사항 전체 목록 보여주기
//	@GetMapping("/notice")
//	public String customerService(Model model) {
//		log.info("customerService....");
//		model.addAttribute("customer", service.getList());
//		
//		return "/customerService/notice";
//	}
//	
//	@GetMapping("/register")
//	public void register() {
//		
//	}
//	
//	@PostMapping("/register")
//	public String register(NoticeVO notice) {
//		log.info("register...");
//		service.register(notice);
//		
//		return "redirect:/customerService/notice";
//	}
//	
//	// 자주하는 질문 전체 목록 보여주기
//	@GetMapping("/faq")
//	public String faq() {
//		
//		return "/customerService/faq";
//	}
//
//}
