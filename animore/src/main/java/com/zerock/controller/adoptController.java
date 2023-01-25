package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/adopt/*")
public class adoptController {
	@GetMapping("/animalDetails")
	public void animalDetails() {
		
	}
	
	@GetMapping("/animalform")
	public void animalform() {
		
	}
	
	@GetMapping("/checklist")
	public void checklist() {
		
	}
	
	@GetMapping("/formSubmit")
	public void formSubmit() {
		
	}
	
	@GetMapping("/procedure")
	public void procedure() {
		
	}
	
	@GetMapping("/protectAnimal")
	public void protectAnimal() {
		
	}
}
