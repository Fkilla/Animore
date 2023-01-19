package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class mainload {
	
	@RequestMapping(value = "/{var}", method = RequestMethod.GET)
	public String base(@PathVariable String var) {
		log.info("다시 시도");
		return var;
	}
	
}
