package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/join/*")
public class joinController {
	
	@GetMapping("/join_main")
	public void join_main() {
		
	}
	
	@GetMapping("/join_form")
	public void join_form() {
		
	}
	
	@GetMapping("/join_complete")
	public void join_complete() {
		
	}
	
	@GetMapping("/join_terms")
	public void join_terms() {
		
	}
}
