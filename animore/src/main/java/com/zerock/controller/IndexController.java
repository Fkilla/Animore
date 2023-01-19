package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class IndexController {

	@GetMapping("/index")
	public String main() {
		log.info("main.....");
		return "index";
	}
	
	
}
