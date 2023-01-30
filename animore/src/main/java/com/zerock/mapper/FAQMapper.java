package com.zerock.mapper;

import java.util.List;

import com.zerock.domain.Criteria;
import com.zerock.domain.FAQVO;

public interface FAQMapper {
	
	// public List<FAQVO> faqGetList();
	
	// faq 목록 전체 + 페이지 처리
	public List<FAQVO> getListPaging(Criteria cri);
	
	// faq 전체 데이터 개수 처리
	public int getTotalCount(Criteria cri);
	
	// faq 특정글 조회
	public FAQVO read(Long bno);
	
	// faq 조회수 증가
	public int viewCount(Long bno);

}
