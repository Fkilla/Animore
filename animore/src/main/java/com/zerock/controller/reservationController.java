package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/reservation/*")
public class reservationController {

	// 봉사활동 예약
	@GetMapping("/volunteer")
	public String getVolunteer() {
		log.info("volunteer....");
		return "reservation/volunteer";
	}
	
	// 방문상담 예약
	@GetMapping("/visit")
	public String getVisit() {
		log.info("visit....");
		return "reservation/visit";
	}
	
	// 예약확인 페이지
	@GetMapping("/completed")
	public String getCompleted() {
		log.info("completed....");
		return "reservation/completed";
	}
	

}