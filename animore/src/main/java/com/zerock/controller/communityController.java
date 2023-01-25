package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/community/*")
public class communityController {
	
	// 입양후기
	@GetMapping("/adoptionReview")
	public String getAdoptionReview() {
		log.info("adoptionReview....");
		return "community/adoptionReview";
	}
	
	// 입양후기 상세페이지
	@GetMapping("/getAR")
	public String getAR() {
		log.info("getAR");
		return "community/getAR";
	}
	
	// 자유게시판
	@GetMapping("/freeBoard")
	public String getFreeBoard() {
		log.info("freeBoard....");
		return "community/freeBoard";
	}
	
	// 자유게시판 상세보기
	@GetMapping("/getFB")
	public String getFB() {
		log.info("getFB....");
		return "community/getFB";
	}
	
	// 중고거래
	@GetMapping("/usedItems")
	public String getUsedItems() {
		log.info("usedItems....");
		return "community/usedItems";
	}
	
	// 중고거래 상세페이지
	@GetMapping("/getUI")
	public String getUI() {
		log.info("getUI....");
		return "community/getUI";
	}
	
	// 입양후기 등록하기
	@GetMapping("/registerAR")
	public void registerAR() {
		
	}
	
	// 자유게시판 등록하기
	@GetMapping("/registerFB")
	public void registerFB() {
		
	}
	
	// 중고거래 등록하기
	@GetMapping("/registerUI")
	public void registerUI() {
		
	}
	
}
