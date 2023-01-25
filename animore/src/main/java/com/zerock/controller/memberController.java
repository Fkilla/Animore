package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
public class memberController {

	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/pass_find")
	public void pass_find() {
		
	}
}
