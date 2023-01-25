package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/staffMyPage/*")
public class staffMyPageController {
	/*
	 * //관리자 마이페이지 : 매출액
	 * 
	 * @GetMapping("/profit") public String profit() {
	 * 
	 * return "/staffMyPage/profit"; }
	 */
		
		//관리자 마이페이지 : 상품관리
		@GetMapping("/product_manage")
		public String product_manage() {
	  
			return "/staffMyPage/product_manage";
		}
		
		//관리자 마이페이지 : 상품관리 상세페이지
		@GetMapping("/product_manage_watch")
		public String product_manage_watch() {
	  
			return "/staffMyPage/product_manage_watch";
		}
		
		//관리자 마이페이지 : 배송정보/구매내역 관리
		@GetMapping("/current_perchase")
		public String current_perchase() {
	  
			return "/staffMyPage/current_perchase";
		}
		
		//관리자 마이페이지 : 보호동물 보기 리스트 
		@GetMapping("/protect_animal")
		public String protect_animal() {
		  
			return "/staffMyPage/protect_animal";
		}

		//관리자 마이페이지 : 입양신청 폼 
		@GetMapping("/adopt_reservation_form")
		public String adopt_reservation_form() {
		  
			return "/staffMyPage/adopt_reservation_form";
		}	
		
		//관리자 마이페이지 : 회원목록
		@GetMapping("/member_list")
		public String member_list() {
		  
			return "/staffMyPage/member_list";
		}
		
		//관리자 마이페이지 : 방문신청 폼
		@GetMapping("/visit_reservation_form")
		public String visit_reservation_form() {
		  
			return "/staffMyPage/visit_reservation_form";
		}
		
		//관리자 마이페이지 : 보호중인 동물 현황
		@GetMapping("/current_animal")
		public String current_animal() {
		  
			return "/staffMyPage/current_animal";
		}
		
		//관리자 마이페이지 : 보호동물 보기 글 등록
		@GetMapping("/protect_animal_write")
		public String protect_animal_write() {
		  
			return "/staffMyPage/protect_animal_write";
		}
		
		//관리자 마이페이지 : 보호동물 보기 글 상세페이지
		@GetMapping("/protect_animal_watch")
		public String protect_animal_watch() {
		  
			return "/staffMyPage/protect_animal_watch";
		}
		
		//관리자 마이페이지 : 배송정보/구매내역관리 상세보기
		@GetMapping("/current_perchase_watch")
		public String current_perchase_watch() {
		  
			return "/staffMyPage/current_perchase_watch";
		}
		
		//관리자 마이페이지 : 보호동물 글 수정
		@GetMapping("/protect_animal_modify")
		public String protect_animal_modify() {
		  
			return "/staffMyPage/protect_animal_modify";
		}
		
		//관리자 마이페이지 : 상품 글 수정
		@GetMapping("/product_manage_modify")
		public String product_manage_modify() {
		  
			return "/staffMyPage/product_manage_modify";
		}
		
		//관리자 마이페이지 : 배송정보/구매내역관리 상세보기 수정
		@GetMapping("/current_perchase_modify")
		public String current_perchase_modify() {
		  
			return "/staffMyPage/current_perchase_modify";
		}
		
		//관리자 마이페이지 : 상품등록
		@GetMapping("/product_manage_write")
		public String product_manage_write() {
		  
			return "/staffMyPage/product_manage_write";
		}
		
		//관리자 마이페이지 : 방문신청 폼 상세보기
		@GetMapping("/visit_reservation_form_watch")
		public String visit_reservation_form_watch() {
		  
			return "/staffMyPage/visit_reservation_form_watch";
		}
		
		//관리자 마이페이지 : 입양신청 폼 상세보기
		@GetMapping("/adopt_reservation_form_watch")
		public String adopt_reservation_form_watch() {
		  
			return "/staffMyPage/adopt_reservation_form_watch";
		}
}
