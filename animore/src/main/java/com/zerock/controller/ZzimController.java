package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
@RequestMapping("/myPage/*")
public class ZzimController {

	// 나의 찜 목록 보기
	@GetMapping("/myZzim")
	public void zzim() {
		log.info("myZzim...");
	}
}
