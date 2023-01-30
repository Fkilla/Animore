package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.Criteria;
import com.zerock.domain.FAQVO;
import com.zerock.mapper.FAQMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class FAQServiceImpl implements FAQService {
	
	private FAQMapper mapper;

	// FAQ 목록 전체 불러오기
	@Override
	public List<FAQVO> getList(Criteria cri) {
		log.info("FAQ getList....." + cri);
		return mapper.getListPaging(cri);
	}
	
	// FAQ 전체 데이터 갯수 처리
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	// 특정 FAQ 읽기
	@Override
	public FAQVO get(Long bno) {
		log.info("FAQ read....");
		return mapper.read(bno);
	}

	// FAQ 증가
	@Override
	public int viewCount(Long bno) {
		log.info("FAQViewCount...");
		return mapper.viewCount(bno);
	}	

}
