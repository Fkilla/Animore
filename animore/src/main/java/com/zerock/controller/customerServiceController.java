package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/customerService/*")
public class customerServiceController {
	@GetMapping("/delete")
	public void delete() {
		
	}
	
	@GetMapping("/faq")
	public void faq() {
		
	}
	
	@GetMapping("/get")
	public void get() {
		
	}
	
	@GetMapping("/notice")
	public void notice() {
		
	}
	
	@GetMapping("/qna")
	public void qna() {
		
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
}
