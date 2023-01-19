package com.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zerock.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
public class mainload {

											
//	@RequestMapping(value = "/{var}", method = RequestMethod.GET)
//	public String base(@PathVariable String var) {
//		return var;
//	}
	
//	@RequestMapping(value = "/customerService/{var}", method = RequestMethod.GET)
//	public String customerService(@PathVariable String var) {
//		if(var == "/customerService") {
//			log.info("customerService....");
//			model.addAttribute("customer", service.getList());
//		}
//		
//		return "customerService/"+var;
//	}
	
}