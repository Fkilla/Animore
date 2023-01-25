package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/anymoremall/*")
public class anymoremallController {
	@GetMapping("/cart")
	public void cart() {
		
	}
	
	@GetMapping("/product_detail")
	public void product_detail() {
		
	}
	
	@GetMapping("/product_list")
	public void product_list() {
		
	}
}
