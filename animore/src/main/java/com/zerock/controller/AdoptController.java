package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/adopt/*")
public class AdoptController {
	
	// 입양신청
	@GetMapping("/protectAnimal")
	public void protectAnimal() {
		log.info("protectAnimal...");
	}
	
	// 입양 절차
	@GetMapping("/procedure")
	public void procedure() {
		log.info("procedure...");
	}
	
	// 동물 상세보기 페이지
	@GetMapping("/animalDetails")
	public void animalDetails() {
		log.info("animalDetails...");
	}
	
	// 입양신청 전 체크리스트
	@GetMapping("/checklist")
	public void checklist() {
		log.info("checklist...");
	}
	
	// 입양신청 폼
	@GetMapping("/animalform")
	public void animalform() {
		log.info("animalform...");
	}
	
	// 나의 찜 목록 보기
	@GetMapping("/myZzim")
	public void zzim() {
		log.info("myZzim...");
	}
	
	// 나의 구매 내역 보기
	@GetMapping("/orderlist")
	public void orderlist() {
		log.info("orderlist...");
	}
	
	// 장바구니
	@GetMapping("/cart")
	public void cart() {
		log.info("cart...");
	}	

}
