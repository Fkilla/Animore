package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.FAQVO;
import com.zerock.mapper.FAQMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class FAQServiceImpl implements FAQService {
	
	private FAQMapper mapper;

	@Override
	public List<FAQVO> faqGetList() {
		log.info("faqGetList...");
		return mapper.faqGetList();
	}

}
